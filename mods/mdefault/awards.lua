awards.register_award("mdefault_largs_bags", {
    title = "Large",
    description = S("Craft 4 large bags."),
    icon = "awards_backpacker.png",
    trigger = {
        type = "craft",
        item = "unified_inventory:bag_large",
        target = 4
    }
})