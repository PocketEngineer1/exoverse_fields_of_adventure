-- microexpansion/machines.lua

local me = microexpansion
local pipeworks_enabled = minetest.get_modpath("pipeworks") and true or false

-- [me chest] Get formspec
local function chest_formspec(pos, start_id, listname, page_max, q)
	local list
	local page_number = ""
	local buttons = ""
	local query = q or ""
	local net,cp = me.get_connected_network(pos)

	if cp then
		if listname and net:get_item_capacity() > 0 then
		  local ctrlinvname = net:get_inventory_name()
			if listname == "main" then
				list = "list[detached:"..ctrlinvname..";"
				  .. listname .. ";0,0.3;8,4;" .. (start_id - 1) .. "]"
			else
				list = "list[context;" .. listname .. ";0,0.3;8,4;" .. (start_id - 1) .. "]"
			end
			list = list .. [[
				list[current_player;main;0,5.5;9,1;]
				list[current_player;main;0,6.73;9,3;9]
				listring[detached:]]..ctrlinvname..[[;main]
				listring[current_player;main]
			]]
			buttons = [[
				button[3.56,4.35;1.8,0.9;tochest;To Drive]
				tooltip[tochest;Move everything from your inventory to the ME network.]
				button[5.4,4.35;0.8,0.9;prev;<]
				button[7.25,4.35;0.8,0.9;next;>]
				tooltip[prev;Previous]
				tooltip[next;Next]
				field[0.29,4.6;2.2,1;filter;;]]..query..[[]
				button[2.1,4.5;0.8,0.5;search;?]
				button[2.75,4.5;0.8,0.5;clear;X]
				tooltip[search;Search]
				tooltip[clear;Reset]
			]]
		else
			list = "label[3,2;" .. minetest.colorize("red", "No connected drives!") .. "]"
		end
	else
		list = "label[3,2;" .. minetest.colorize("red", "No connected network!") .. "]"
	end
	if page_max then
		page_number = "label[6.15,4.5;" .. math.floor((start_id / 32)) + 1 ..
			"/" .. page_max .."]"
	end

	return [[
		size[9,9.5]
	]]..
		microexpansion.gui_bg ..
		microexpansion.gui_slots ..
		list ..
	[[
		label[0,-0.23;ME Terminal]
		field_close_on_enter[filter;false]
	]]..
		page_number ..
		buttons
end

local function update_chest(pos,_,ev)
  --for now all events matter
  
	local network = me.get_connected_network(pos)
	local meta = minetest.get_meta(pos)
	if network == nil then
		meta:set_int("page", 1)
		meta:set_string("formspec", chest_formspec(pos, 1))
		return
	end
	local size = network:get_item_capacity()
	local page_max = me.int_to_pagenum(size) + 1

	meta:set_string("inv_name", "main")
	meta:set_string("formspec", chest_formspec(pos, 1, "main", page_max))
end

-- [me chest] Register node
microexpansion.register_node("term", {
	description = "ME Terminal",
	usedfor = "Can interact with storage cells in ME networks",
	tiles = {
		"chest_top",
		"chest_top",
		"chest_side",
		"chest_side",
		"chest_side",
		"chest_front",
	},
	recipe = {
    { 1, {
        {"mdefault:bar_iron",   "chest:chest",               "mdefault:bar_iron"},
        {"mdefault:bar_iron", "microexpansion:machine_casing", "mdefault:bar_iron"},
        {"mdefault:bar_iron", "microexpansion:cable",          "mdefault:bar_iron"},
      },
    }
  },
	is_ground_content = false,
	groups = { cracky = 1, me_connect = 1, tubedevice = 1, tubedevice_receiver = 1 },
	paramtype = "light",
	paramtype2 = "facedir",
	me_update = update_chest,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", chest_formspec(pos, 1))
		meta:set_string("inv_name", "none")
		meta:set_int("page", 1)

		local own_inv = meta:get_inventory()
		own_inv:set_size("src", 1)

		local net = me.get_connected_network(pos)
		me.send_event(pos,"connect",{net=net})
		if net then
			update_chest(pos)
		end
	end,
	after_destruct = function(pos)
   me.send_event(pos,"disconnect")
  end,
  on_metadata_inventory_put = function(pos, listname, _, stack)
    local net = me.get_connected_network(pos)
    local inv = net:get_inventory()
    me.insert_item(stack, inv, "main")
  end,
	on_metadata_inventory_take = function(pos, listname, _, stack)
		local net = me.get_connected_network(pos)
		local inv = net:get_inventory()
    inv:remove_item("main", stack)
	end,
	tube = {
    can_insert = function(pos, _, stack) --pos, node, stack, direction
      local net = me.get_connected_network(pos)
      local inv = net:get_inventory()
      local max_slots = inv:get_size("main")
      local max_items = net.capacity_cache

      local slots, items = 0, 0
      -- Get amount of items in drive
      for i = 1, max_slots do
        local dstack = inv:get_stack("main", i)
        if dstack:get_name() ~= "" then
          slots = slots + 1
          local num = dstack:get_count()
          if num == 0 then num = 1 end
          items = items + num
        end
      end
      items = items + stack:get_count()
      return max_items > items
    end,
    insert_object = function(pos, _, stack)
      local net = me.get_connected_network(pos)
      local inv = net:get_inventory()
      me.insert_item(stack, inv, "main")
      net:set_storage_space(true)
      --TODO: leftover
      return ItemStack()
    end,
    connect_sides = {left=1, right=1, front=1, back=1, top=1, bottom=1},
  },
  after_place_node = pipeworks_enabled and pipeworks.after_place,
  after_dig_node = pipeworks_enabled and pipeworks.after_dig,
    on_receive_fields = function(pos, _, fields, sender)
      local net,cp = me.get_connected_network(pos)
      if net then
        if cp then
          microexpansion.log("network and ctrl_pos","info")
        else
	     microexpansion.log("network but no ctrl_pos","warning")
		  end
		else
		  if cp then
		    microexpansion.log("no network but ctrl_pos","warning")
		  else
		    microexpansion.log("no network and no ctrl_pos","info")
		  end
		end
		local meta = minetest.get_meta(pos)
		local page = meta:get_int("page")
		local inv_name = meta:get_string("inv_name")
		local own_inv = meta:get_inventory()
		local ctrl_inv
		if cp then
			ctrl_inv = net:get_inventory()
		else
		  microexpansion.log("no network connected","warning")
		  return
		end
		local inv
		if inv_name == "main" then
			inv = ctrl_inv
			assert(inv,"no control inv")
		else
			inv = own_inv
			assert(inv,"no own inv")
		end
		local page_max = math.floor(inv:get_size(inv_name) / 32) + 1
		if inv_name == "none" then
			return
		end
		if fields.next then
			if page + 32 > inv:get_size(inv_name) then
				return
			end
			meta:set_int("page", page + 32)
			meta:set_string("formspec", chest_formspec(pos, page + 32, inv_name, page_max))
		elseif fields.prev then
			if page - 32 < 1 then
				return
			end
			meta:set_int("page", page - 32)
			meta:set_string("formspec", chest_formspec(pos, page - 32, inv_name, page_max))
		elseif fields.search or fields.key_enter_field == "filter" then
			own_inv:set_size("search", 0)
			if fields.filter == "" then
				meta:set_int("page", 1)
				meta:set_string("inv_name", "main")
				meta:set_string("formspec", chest_formspec(pos, 1, "main", page_max))
			else
				local tab = {}
				for i = 1, ctrl_inv:get_size("main") do
					local match = ctrl_inv:get_stack("main", i):get_name():find(fields.filter)
					if match then
						tab[#tab + 1] = ctrl_inv:get_stack("main", i)
					end
				end
				own_inv:set_list("search", tab)
				meta:set_int("page", 1)
				meta:set_string("inv_name", "search")
				meta:set_string("formspec", chest_formspec(pos, 1, "search", page_max, fields.filter))
			end
		elseif fields.clear then
			own_inv:set_size("search", 0)
			meta:set_int("page", 1)
			meta:set_string("inv_name", "main")
			meta:set_string("formspec", chest_formspec(pos, 1, "main", page_max))
		elseif fields.tochest then
			local pinv = minetest.get_inventory({type="player", name=sender:get_player_name()})
			net:set_storage_space(pinv:get_size("main"))
			local space = net:get_item_capacity()
      local contents = ctrl_inv:get_list("main") or {}
      for _,s in pairs(contents) do
        if not s:is_empty() then
          space = space - s:get_count()
        end
      end
			microexpansion.move_inv({ inv=pinv, name="main" }, { inv=ctrl_inv, name="main",huge=true }, space)
			net:set_storage_space(true)
		end
	end,
})
