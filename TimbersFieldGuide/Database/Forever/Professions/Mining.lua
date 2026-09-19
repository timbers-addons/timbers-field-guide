local _, TFG = ...

TFG.MINING_FOREVER = {
    [1] = {
        {
            spell_id = 2657,
            name = "Smelt Copper",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 2840, qty = 1 },
            materials = {
                { item_id = 2770, qty = 1 },
            },
            levels = { 1, 25, 47, 70 },
        },
        {
            spell_id = 2580,
            name = "Find Minerals",
            icon = "spell_nature_earthquake",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 1 },
        },
        {
            spell_id = 2575,
            name = "Mining",
            categories = { "Profession Training" },
            icon = "trade_mining",
            source = {
                {
                    type = "Trainer",
                    cost = 10,
                },
            },
            levels = { 1 },
            cap = 75,
        },
        {
            spell_id = 2656,
            name = "Smelting",
            icon = "spell_fire_flameblades",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 1 },
        },
        {
            item_id = 2770,
            name = "Copper Vein",
            icon = "inv_ore_copper_01",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [20] = {
        {
            spell_id = 1230161,
            name = "Lodestone",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_misc_rune_06",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 279960, qty = 1 },
            materials = {
                { item_id = 2835, qty = 1 },
                { item_id = 2840, qty = 1 },
            },
            levels = { 20, 20, 22, 25 },
        },
    },
    [50] = {
        {
            spell_id = 2576,
            name = "Mining",
            categories = { "Profession Training" },
            icon = "trade_mining",
            source = {
                {
                    type = "Trainer",
                    cost = 500,
                },
            },
            levels = { 50 },
            cap = 150,
        },
    },
    [65] = {
        {
            spell_id = 2659,
            name = "Smelt Bronze",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_bronze",
            source = {
                {
                    type = "Trainer",
                    cost = 200,
                },
            },
            product = { item_id = 2841, qty = 2 },
            materials = {
                { item_id = 2840, qty = 1 },
                { item_id = 3576, qty = 1 },
            },
            levels = { 65, 65, 90, 115 },
        },
        {
            spell_id = 3304,
            name = "Smelt Tin",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_05",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            product = { item_id = 3576, qty = 1 },
            materials = {
                { item_id = 2771, qty = 1 },
            },
            levels = { 65, 50, 62, 75 },
        },
        {
            item_id = 2771,
            name = "Tin Vein",
            icon = "inv_ore_tin_01",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [75] = {
        {
            spell_id = 2658,
            name = "Smelt Silver",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_01",
            source = {
                {
                    type = "Trainer",
                    cost = 200,
                },
            },
            product = { item_id = 2842, qty = 1 },
            materials = {
                { item_id = 2775, qty = 1 },
            },
            levels = { 75, 100, 112, 125 },
        },
        {
            item_id = 2775,
            name = "Silver Vein",
            icon = "inv_stone_16",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [125] = {
        {
            spell_id = 3307,
            name = "Smelt Iron",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_iron",
            source = {
                {
                    type = "Trainer",
                    cost = 500,
                },
            },
            product = { item_id = 3575, qty = 1 },
            materials = {
                { item_id = 2772, qty = 1 },
            },
            levels = { 125, 130, 135, 140 },
        },
        {
            spell_id = 3564,
            name = "Mining",
            categories = { "Profession Training" },
            icon = "trade_mining",
            source = {
                {
                    type = "Trainer",
                    cost = 5000,
                },
            },
            levels = { 125 },
            cap = 225,
        },
        {
            item_id = 2772,
            name = "Iron Deposit",
            icon = "inv_ore_iron_01",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [140] = {
        {
            spell_id = 1262975,
            name = "Rock Garden",
            categories = { "Camping" },
            icon = "inv_misc_powder_iron",
            source = {
                {
                    type = "Item",
                    item_id = 273097,
                },
            },
            product = { item_id = 279948, qty = 1 },
            materials = {
                { item_id = 2838, qty = 2 },
                { item_id = 2772, qty = 1 },
                { item_id = 2842, qty = 1 },
            },
            levels = { 140, 140, 142, 145 },
        },
    },
    [155] = {
        {
            spell_id = 3308,
            name = "Smelt Gold",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_03",
            source = {
                {
                    type = "Trainer",
                    cost = 2500,
                },
            },
            product = { item_id = 3577, qty = 1 },
            materials = {
                { item_id = 2776, qty = 1 },
            },
            levels = { 155, 170, 177, 185 },
        },
        {
            item_id = 2776,
            name = "Gold Vein",
            icon = "inv_ore_copper_01",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [165] = {
        {
            spell_id = 3569,
            name = "Smelt Steel",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_steel",
            source = {
                {
                    type = "Trainer",
                    cost = 2500,
                },
            },
            product = { item_id = 3859, qty = 1 },
            materials = {
                { item_id = 3575, qty = 1 },
                { item_id = 3857, qty = 1 },
            },
            levels = { 165, 165, 165, 165 },
        },
    },
    [175] = {
        {
            spell_id = 10097,
            name = "Smelt Mithril",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_06",
            source = {
                {
                    type = "Trainer",
                    cost = 5000,
                },
            },
            product = { item_id = 3860, qty = 1 },
            materials = {
                { item_id = 3858, qty = 1 },
            },
            levels = { 175, 175, 175, 175 },
        },
        {
            item_id = 3858,
            name = "Mithril Deposit",
            icon = "inv_ore_mithril_02",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [200] = {
        {
            spell_id = 10248,
            name = "Mining",
            categories = { "Profession Training" },
            icon = "trade_mining",
            source = {
                {
                    type = "Trainer",
                    cost = 50000,
                },
            },
            levels = { 200 },
            cap = 300,
        },
    },
    [230] = {
        {
            spell_id = 14891,
            name = "Smelt Dark Iron",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_mithril",
            product = { item_id = 11371, qty = 1 },
            materials = {
                { item_id = 11370, qty = 8 },
            },
            levels = { 230, 230, 230, 230 },
        },
        {
            spell_id = 10098,
            name = "Smelt Truesilver",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_08",
            source = {
                {
                    type = "Trainer",
                    cost = 10000,
                },
            },
            product = { item_id = 6037, qty = 1 },
            materials = {
                { item_id = 7911, qty = 1 },
            },
            levels = { 230, 230, 230, 230 },
        },
        {
            item_id = 11370,
            name = "Dark Iron Deposit",
            icon = "inv_ore_mithril_01",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
        {
            item_id = 7911,
            name = "Truesilver Deposit",
            icon = "inv_ore_truesilver_01",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [245] = {
        {
            item_id = 10620,
            name = "Small Thorium Vein",
            icon = "inv_ore_thorium_02",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [250] = {
        {
            spell_id = 16153,
            name = "Smelt Thorium",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_07",
            source = {
                {
                    type = "Trainer",
                    cost = 20000,
                },
            },
            product = { item_id = 12359, qty = 1 },
            materials = {
                { item_id = 10620, qty = 1 },
            },
            levels = { 250, 250, 250, 250 },
        },
    },
    [275] = {
        {
            spell_id = 1249637,
            name = "Smelt Azerothium",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_livingsteel",
            source = {
                {
                    type = "Trainer",
                    cost = 50000,
                },
            },
            product = { item_id = 249726, qty = 1 },
            materials = {
                { item_id = 249426, qty = 2 },
                { item_id = 3857, qty = 1 },
            },
            levels = { 275, 275, 275, 275 },
        },
        {
            item_id = 10620,
            name = "Rich Thorium Vein",
            icon = "inv_ore_thorium_02",
            source = {
                {
                    type = "Trainer",
                },
            },
        },
    },
    [300] = {
        {
            spell_id = 1263071,
            name = "Molten Foundry",
            categories = { "Camping" },
            icon = "inv_blacksmithingalloys_red",
            source = {
                {
                    type = "Item",
                    item_id = 273122,
                },
            },
            product = { item_id = 279952, qty = 1 },
            materials = {
                { item_id = 12359, qty = 5 },
                { item_id = 12365, qty = 2 },
                { item_id = 6037, qty = 1 },
            },
            levels = { 300, 300, 300, 300 },
        },
        {
            spell_id = 1306126,
            name = "Smelt Heavy Thorium",
            categories = { "Smelted Bars" },
            icon = "item_elementiumbar",
            source = {
                {
                    type = "Trainer",
                    cost = 50000,
                },
            },
            product = { item_id = 251291, qty = 1 },
            materials = {
                { item_id = 248815, qty = 1 },
            },
            levels = { 300, 300, 307, 315 },
        },
    },
    [310] = {
        {
            spell_id = 22967,
            name = "Smelt Elementium",
            categories = { "Smelted Bars" },
            icon = "inv_ingot_thorium",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 17771, qty = 1 },
            materials = {
                { item_id = 18562, qty = 1 },
                { item_id = 12360, qty = 10 },
                { item_id = 17010, qty = 1 },
                { item_id = 18567, qty = 3 },
            },
            levels = { 310, 310, 315, 320 },
        },
    },
    [980] = {
        {
            spell_id = 1213638,
            name = "Smelt Obsidian-Infused Thorium Bar",
            icon = "inv_ingot_titansteel_dark",
            product = { item_id = 234003, qty = 1 },
            materials = {
                { item_id = 12655, qty = 2 },
                { item_id = 22203, qty = 2 },
            },
            levels = { 0, 315, 322, 330 },
        },
    },
}
