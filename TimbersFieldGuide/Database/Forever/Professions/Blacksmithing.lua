local _, TFG = ...

TFG.BLACKSMITHING_FOREVER = {
    [1] = {
        {
            spell_id = 2663,
            name = "Copper Bracers",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_03",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 2853, qty = 1 },
            materials = {
                { item_id = 2840, qty = 2 },
            },
            levels = { 1, 20, 40, 60 },
        },
        {
            spell_id = 1245287,
            name = "Copper Rod",
            categories = { "Inert Enchanting Rods" },
            icon = "inv_misc_flute_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 6217, qty = 1 },
            materials = {
                { item_id = 2840, qty = 1 },
            },
            levels = { 1, 10, 12, 15 },
        },
        {
            spell_id = 12260,
            name = "Rough Copper Vest",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10421, qty = 1 },
            materials = {
                { item_id = 2840, qty = 4 },
            },
            levels = { 1, 15, 35, 55 },
        },
        {
            spell_id = 2660,
            name = "Rough Sharpening Stone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_sharpeningstone_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 2862, qty = 1 },
            materials = {
                { item_id = 2835, qty = 1 },
            },
            levels = { 1, 15, 35, 55 },
        },
        {
            spell_id = 3115,
            name = "Rough Weightstone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_weightstone_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 3239, qty = 1 },
            materials = {
                { item_id = 2835, qty = 1 },
            },
            levels = { 1, 15, 35, 55 },
        },
        {
            spell_id = 2018,
            name = "Blacksmithing",
            categories = { "Profession Training" },
            icon = "trade_blacksmithing",
            source = {
                {
                    type = "Trainer",
                    cost = 10,
                },
            },
            levels = { 1 },
            cap = 75,
        },
    },
    [15] = {
        {
            spell_id = 2662,
            name = "Copper Chain Pants",
            categories = { "Mail Legguards" },
            icon = "inv_pants_03",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            product = { item_id = 2852, qty = 1 },
            materials = {
                { item_id = 2840, qty = 4 },
            },
            levels = { 15, 50, 70, 90 },
        },
        {
            spell_id = 2737,
            name = "Copper Mace",
            categories = { "One-Handed Maces" },
            icon = "inv_mace_01",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            product = { item_id = 2844, qty = 1 },
            materials = {
                { item_id = 2840, qty = 6 },
                { item_id = 2880, qty = 1 },
                { item_id = 2589, qty = 2 },
            },
            levels = { 15, 55, 75, 95 },
        },
    },
    [20] = {
        {
            spell_id = 2738,
            name = "Copper Axe",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_23",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            product = { item_id = 2845, qty = 1 },
            materials = {
                { item_id = 2840, qty = 6 },
                { item_id = 2880, qty = 1 },
                { item_id = 2589, qty = 2 },
            },
            levels = { 20, 60, 80, 100 },
        },
        {
            spell_id = 3319,
            name = "Copper Chain Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            product = { item_id = 3469, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
            },
            levels = { 20, 60, 80, 100 },
        },
        {
            spell_id = 1230171,
            name = "Sharpening Wheel",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_stone_grindingstone_01",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 279944, qty = 1 },
            materials = {
                { item_id = 2835, qty = 1 },
                { item_id = 2840, qty = 1 },
            },
            levels = { 20, 20, 22, 25 },
        },
    },
    [25] = {
        {
            spell_id = 9983,
            name = "Copper Claymore",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_21",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 7955, qty = 1 },
            materials = {
                { item_id = 2840, qty = 10 },
                { item_id = 2880, qty = 2 },
                { item_id = 3470, qty = 1 },
                { item_id = 2318, qty = 1 },
            },
            levels = { 25, 65, 85, 105 },
        },
        {
            spell_id = 8880,
            name = "Copper Dagger",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_14",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 7166, qty = 1 },
            materials = {
                { item_id = 2840, qty = 6 },
                { item_id = 2880, qty = 1 },
                { item_id = 3470, qty = 1 },
                { item_id = 2318, qty = 1 },
            },
            levels = { 25, 65, 85, 105 },
        },
        {
            spell_id = 2739,
            name = "Copper Shortsword",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_26",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            product = { item_id = 2847, qty = 1 },
            materials = {
                { item_id = 2840, qty = 6 },
                { item_id = 2880, qty = 1 },
                { item_id = 2589, qty = 2 },
            },
            levels = { 25, 65, 85, 105 },
        },
        {
            spell_id = 3320,
            name = "Rough Grinding Stone",
            categories = { "Reagents" },
            icon = "inv_stone_grindingstone_01",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 3470, qty = 1 },
            materials = {
                { item_id = 2835, qty = 2 },
            },
            levels = { 25, 45, 65, 85 },
        },
    },
    [30] = {
        {
            spell_id = 3293,
            name = "Copper Battle Axe",
            categories = { "Two-Handed Axes" },
            icon = "inv_throwingaxe_02",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            product = { item_id = 3488, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 2880, qty = 2 },
                { item_id = 774, qty = 2 },
                { item_id = 3470, qty = 2 },
                { item_id = 2318, qty = 2 },
            },
            levels = { 30, 70, 90, 110 },
        },
        {
            spell_id = 2661,
            name = "Copper Chain Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_02",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 2851, qty = 1 },
            materials = {
                { item_id = 2840, qty = 6 },
            },
            levels = { 30, 70, 90, 110 },
        },
        {
            spell_id = 3321,
            name = "Copper Chain Vest",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain",
            source = {
                {
                    type = "Item",
                    item_id = 3609,
                },
            },
            product = { item_id = 3471, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
                { item_id = 774, qty = 1 },
                { item_id = 3470, qty = 2 },
            },
            levels = { 30, 70, 90, 110 },
        },
    },
    [35] = {
        {
            spell_id = 1252229,
            name = "Gemmed Copper Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_chain_11",
            source = {
                {
                    type = "Item",
                    item_id = 251332,
                },
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 250620, qty = 1 },
            materials = {
                { item_id = 2840, qty = 2 },
                { item_id = 818, qty = 2 },
                { item_id = 774, qty = 2 },
                { item_id = 2318, qty = 4 },
            },
            levels = { 35, 40, 40, 40 },
        },
        {
            spell_id = 3325,
            name = "Gemmed Copper Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_05",
            source = {
                {
                    type = "Item",
                    item_id = 3610,
                },
            },
            product = { item_id = 3474, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
                { item_id = 818, qty = 1 },
                { item_id = 774, qty = 1 },
            },
            levels = { 35, 75, 95, 115 },
        },
        {
            spell_id = 1252231,
            name = "Glowing Copper Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            source = {
                {
                    type = "Item",
                    item_id = 251334,
                },
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 250482, qty = 1 },
            materials = {
                { item_id = 2840, qty = 2 },
                { item_id = 10938, qty = 4 },
                { item_id = 2318, qty = 2 },
            },
            levels = { 35, 40, 40, 40 },
        },
        {
            spell_id = 3323,
            name = "Runed Copper Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_04",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 3472, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
                { item_id = 3470, qty = 2 },
            },
            levels = { 35, 75, 95, 115 },
        },
        {
            spell_id = 3324,
            name = "Runed Copper Pants",
            categories = { "Mail Legguards" },
            icon = "inv_pants_03",
            source = {
                {
                    type = "Trainer",
                    cost = 200,
                },
            },
            product = { item_id = 3473, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
                { item_id = 2320, qty = 3 },
                { item_id = 3470, qty = 3 },
            },
            levels = { 35, 75, 95, 115 },
        },
        {
            spell_id = 1252230,
            name = "Strange Copper Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_plate_01",
            source = {
                {
                    type = "Item",
                    item_id = 251333,
                },
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 250621, qty = 1 },
            materials = {
                { item_id = 2840, qty = 2 },
                { item_id = 10940, qty = 4 },
                { item_id = 2318, qty = 2 },
            },
            levels = { 35, 40, 40, 40 },
        },
    },
    [40] = {
        {
            spell_id = 2665,
            name = "Coarse Sharpening Stone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_sharpeningstone_02",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 2863, qty = 1 },
            materials = {
                { item_id = 2836, qty = 1 },
            },
            levels = { 40, 40, 47, 55 },
        },
        {
            spell_id = 3116,
            name = "Coarse Weightstone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_weightstone_02",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 3240, qty = 1 },
            materials = {
                { item_id = 2836, qty = 1 },
            },
            levels = { 40, 40, 47, 55 },
        },
        {
            spell_id = 7408,
            name = "Heavy Copper Maul",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_18",
            source = {
                {
                    type = "Trainer",
                    cost = 300,
                },
            },
            product = { item_id = 6214, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 2880, qty = 2 },
                { item_id = 2318, qty = 2 },
            },
            levels = { 40, 80, 100, 120 },
        },
    },
    [45] = {
        {
            spell_id = 1252265,
            name = "Acolyte's Chain Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_23",
            source = {
                {
                    type = "Vendor",
                    item_id = 251368,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250516, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 3470, qty = 4 },
                { item_id = 249427, qty = 2 },
                { item_id = 10940, qty = 2 },
            },
            levels = { 45, 85, 105, 125 },
        },
        {
            spell_id = 1252266,
            name = "Crusader's Chain Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_22",
            source = {
                {
                    type = "Vendor",
                    item_id = 251369,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250517, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 3470, qty = 4 },
                { item_id = 249427, qty = 2 },
                { item_id = 10938, qty = 2 },
            },
            levels = { 45, 85, 105, 125 },
        },
        {
            spell_id = 1252263,
            name = "Guard's Chain Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_15",
            source = {
                {
                    type = "Vendor",
                    item_id = 251366,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250514, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 3470, qty = 4 },
                { item_id = 249427, qty = 2 },
                { item_id = 1210, qty = 2 },
            },
            levels = { 45, 85, 105, 125 },
        },
        {
            spell_id = 1252264,
            name = "Protector's Chain Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_17",
            source = {
                {
                    type = "Vendor",
                    item_id = 251367,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250515, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 3470, qty = 4 },
                { item_id = 249427, qty = 2 },
                { item_id = 818, qty = 2 },
            },
            levels = { 45, 85, 105, 125 },
        },
        {
            spell_id = 2666,
            name = "Runed Copper Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_03",
            source = {
                {
                    type = "Trainer",
                    cost = 200,
                },
            },
            product = { item_id = 2857, qty = 1 },
            materials = {
                { item_id = 2840, qty = 10 },
            },
            levels = { 45, 85, 105, 125 },
        },
        {
            spell_id = 3294,
            name = "Thick War Axe",
            categories = { "One-Handed Axes" },
            icon = "inv_throwingaxe_01",
            source = {
                {
                    type = "Trainer",
                    cost = 500,
                },
            },
            product = { item_id = 3489, qty = 1 },
            materials = {
                { item_id = 2840, qty = 10 },
                { item_id = 2880, qty = 2 },
                { item_id = 2842, qty = 2 },
                { item_id = 3470, qty = 2 },
                { item_id = 2318, qty = 2 },
            },
            levels = { 45, 85, 105, 125 },
        },
        {
            spell_id = 1252262,
            name = "Veteran's Chain Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_17",
            source = {
                {
                    type = "Vendor",
                    item_id = 251365,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250513, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 3470, qty = 4 },
                { item_id = 249427, qty = 2 },
                { item_id = 5498, qty = 2 },
            },
            levels = { 45, 85, 105, 125 },
        },
    },
    [50] = {
        {
            spell_id = 1301448,
            name = "Azure Skyforged Chain",
            categories = { "Mail Belts" },
            icon = "inv_belt_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276955,
                },
            },
            product = { item_id = 277019, qty = 1 },
            materials = {
                { item_id = 2840, qty = 6 },
            },
            levels = { 50, 55, 57, 60 },
        },
        {
            spell_id = 1301446,
            name = "Azure Skyforged Wristguards",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276953,
                },
            },
            product = { item_id = 277017, qty = 1 },
            materials = {
                { item_id = 2840, qty = 5 },
            },
            levels = { 50, 55, 57, 60 },
        },
        {
            spell_id = 1301424,
            name = "Cloudy Skyforged Chain",
            categories = { "Mail Belts" },
            icon = "inv_belt_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276931,
                },
            },
            product = { item_id = 276995, qty = 1 },
            materials = {
                { item_id = 2840, qty = 6 },
            },
            levels = { 50, 55, 57, 60 },
        },
        {
            spell_id = 1301422,
            name = "Cloudy Skyforged Wristguards",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276929,
                },
            },
            product = { item_id = 276993, qty = 1 },
            materials = {
                { item_id = 2840, qty = 5 },
            },
            levels = { 50, 55, 57, 60 },
        },
        {
            spell_id = 3326,
            name = "Coarse Grinding Stone",
            categories = { "Reagents" },
            icon = "inv_stone_grindingstone_02",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            product = { item_id = 3478, qty = 1 },
            materials = {
                { item_id = 2836, qty = 2 },
            },
            levels = { 50, 50, 62, 75 },
        },
        {
            spell_id = 1302598,
            name = "Rough Copper Chain Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            source = {
                {
                    type = "Item",
                    item_id = 277673,
                },
            },
            product = { item_id = 277672, qty = 1 },
            materials = {
                { item_id = 2840, qty = 9 },
            },
            levels = { 50, 60, 65, 70 },
        },
        {
            spell_id = 3100,
            name = "Blacksmithing",
            categories = { "Profession Training" },
            icon = "trade_blacksmithing",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 50 },
            cap = 150,
        },
    },
    [55] = {
        {
            spell_id = 1301447,
            name = "Azure Skyforged Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_glove_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276954,
                },
            },
            product = { item_id = 277018, qty = 1 },
            materials = {
                { item_id = 2840, qty = 7 },
            },
            levels = { 55, 60, 62, 65 },
        },
        {
            spell_id = 1301450,
            name = "Azure Skyforged Greaves",
            categories = { "Mail Boots" },
            icon = "inv_boot_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276957,
                },
            },
            product = { item_id = 277021, qty = 1 },
            materials = {
                { item_id = 2840, qty = 7 },
            },
            levels = { 55, 60, 62, 65 },
        },
        {
            spell_id = 1301423,
            name = "Cloudy Skyforged Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_glove_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276930,
                },
            },
            product = { item_id = 276994, qty = 1 },
            materials = {
                { item_id = 2840, qty = 7 },
            },
            levels = { 55, 60, 62, 65 },
        },
        {
            spell_id = 1301426,
            name = "Cloudy Skyforged Greaves",
            categories = { "Mail Boots" },
            icon = "inv_boot_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276933,
                },
            },
            product = { item_id = 276997, qty = 1 },
            materials = {
                { item_id = 2840, qty = 7 },
            },
            levels = { 55, 60, 62, 65 },
        },
        {
            spell_id = 2667,
            name = "Runed Copper Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_plate03",
            source = {
                {
                    type = "Item",
                    item_id = 2881,
                },
            },
            product = { item_id = 2864, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 1210, qty = 1 },
                { item_id = 3470, qty = 2 },
            },
            levels = { 55, 95, 115, 135 },
        },
    },
    [60] = {
        {
            spell_id = 1301445,
            name = "Azure Skyforged Chainmail",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276952,
                },
            },
            product = { item_id = 277016, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
                { item_id = 2880, qty = 1 },
            },
            levels = { 60, 65, 67, 70 },
        },
        {
            spell_id = 1301449,
            name = "Azure Skyforged Legguards",
            categories = { "Mail Legguards" },
            icon = "inv_pant_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276956,
                },
            },
            product = { item_id = 277020, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
                { item_id = 2880, qty = 1 },
            },
            levels = { 60, 65, 67, 70 },
        },
        {
            spell_id = 1301421,
            name = "Cloudy Skyforged Chainmail",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276928,
                },
            },
            product = { item_id = 276992, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
                { item_id = 2880, qty = 1 },
            },
            levels = { 60, 65, 67, 70 },
        },
        {
            spell_id = 1301425,
            name = "Cloudy Skyforged Legguards",
            categories = { "Mail Legguards" },
            icon = "inv_pant_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276932,
                },
            },
            product = { item_id = 276996, qty = 1 },
            materials = {
                { item_id = 2840, qty = 8 },
                { item_id = 2880, qty = 1 },
            },
            levels = { 60, 65, 67, 70 },
        },
    },
    [80] = {
        {
            spell_id = 1252260,
            name = "Acolyte's Gloves",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_11",
            source = {
                {
                    type = "Vendor",
                    item_id = 251363,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250511, qty = 1 },
            materials = {
                { item_id = 2841, qty = 10 },
                { item_id = 3470, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 10940, qty = 3 },
            },
            levels = { 80, 110, 125, 140 },
        },
        {
            spell_id = 1252351,
            name = "Brass Knuckles",
            categories = { "Fist Weapons" },
            icon = "inv_gauntlets_04",
            source = {
                {
                    type = "Item",
                    item_id = 251454,
                },
            },
            product = { item_id = 250602, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 2880, qty = 4 },
                { item_id = 3470, qty = 2 },
                { item_id = 1210, qty = 2 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 80, 110, 125, 140 },
        },
        {
            spell_id = 1252261,
            name = "Crusader's Gloves",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_12",
            source = {
                {
                    type = "Vendor",
                    item_id = 251364,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250512, qty = 1 },
            materials = {
                { item_id = 2841, qty = 10 },
                { item_id = 3470, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 10938, qty = 3 },
            },
            levels = { 80, 110, 125, 140 },
        },
        {
            spell_id = 1252238,
            name = "Guard's Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_09",
            source = {
                {
                    type = "Item",
                    item_id = 251341,
                },
            },
            product = { item_id = 250489, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
                { item_id = 3470, qty = 2 },
                { item_id = 1210, qty = 2 },
            },
            levels = { 80, 85, 85, 85 },
        },
        {
            spell_id = 1252258,
            name = "Guard's Gloves",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_15",
            source = {
                {
                    type = "Vendor",
                    item_id = 251361,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250509, qty = 1 },
            materials = {
                { item_id = 2841, qty = 10 },
                { item_id = 3470, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 1210, qty = 3 },
            },
            levels = { 80, 110, 125, 140 },
        },
        {
            spell_id = 1252259,
            name = "Protector's Gloves",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_26",
            source = {
                {
                    type = "Vendor",
                    item_id = 251362,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250510, qty = 1 },
            materials = {
                { item_id = 2841, qty = 10 },
                { item_id = 3470, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 818, qty = 3 },
            },
            levels = { 80, 110, 125, 140 },
        },
        {
            spell_id = 1252257,
            name = "Veteran's Gloves",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_26",
            source = {
                {
                    type = "Vendor",
                    item_id = 251360,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250508, qty = 1 },
            materials = {
                { item_id = 2841, qty = 10 },
                { item_id = 3470, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 5498, qty = 3 },
            },
            levels = { 80, 110, 125, 140 },
        },
    },
    [85] = {
        {
            spell_id = 1252255,
            name = "Acolyte's Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_chain_02",
            source = {
                {
                    type = "Vendor",
                    item_id = 251358,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250506, qty = 1 },
            materials = {
                { item_id = 2841, qty = 12 },
                { item_id = 3478, qty = 2 },
                { item_id = 249427, qty = 4 },
                { item_id = 10940, qty = 5 },
            },
            levels = { 85, 115, 130, 145 },
        },
        {
            spell_id = 1252256,
            name = "Crusader's Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_chain_05",
            source = {
                {
                    type = "Vendor",
                    item_id = 251359,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250507, qty = 1 },
            materials = {
                { item_id = 2841, qty = 12 },
                { item_id = 3478, qty = 2 },
                { item_id = 249427, qty = 4 },
                { item_id = 10938, qty = 5 },
            },
            levels = { 85, 115, 130, 145 },
        },
        {
            spell_id = 1252253,
            name = "Guard's Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_chain_01",
            source = {
                {
                    type = "Vendor",
                    item_id = 251356,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250504, qty = 1 },
            materials = {
                { item_id = 2841, qty = 12 },
                { item_id = 3478, qty = 2 },
                { item_id = 249427, qty = 4 },
                { item_id = 1210, qty = 5 },
            },
            levels = { 85, 115, 130, 145 },
        },
        {
            spell_id = 1252254,
            name = "Protector's Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_chain_03",
            source = {
                {
                    type = "Vendor",
                    item_id = 251357,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250505, qty = 1 },
            materials = {
                { item_id = 2841, qty = 12 },
                { item_id = 3478, qty = 2 },
                { item_id = 249427, qty = 4 },
                { item_id = 818, qty = 5 },
            },
            levels = { 85, 115, 130, 145 },
        },
        {
            spell_id = 1252252,
            name = "Veteran's Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_chain_03",
            source = {
                {
                    type = "Vendor",
                    item_id = 251355,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250503, qty = 1 },
            materials = {
                { item_id = 2841, qty = 12 },
                { item_id = 3478, qty = 2 },
                { item_id = 249427, qty = 4 },
                { item_id = 5498, qty = 5 },
            },
            levels = { 85, 115, 130, 145 },
        },
    },
    [95] = {
        {
            spell_id = 1252280,
            name = "Acolyte's Silvered Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_36",
            source = {
                {
                    type = "Vendor",
                    item_id = 251383,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250531, qty = 1 },
            materials = {
                { item_id = 2841, qty = 15 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 4 },
                { item_id = 249427, qty = 4 },
                { item_id = 10940, qty = 6 },
            },
            levels = { 95, 125, 140, 155 },
        },
        {
            spell_id = 1252352,
            name = "Bronze Dory",
            categories = { "Polearms" },
            icon = "inv_spear_05",
            source = {
                {
                    type = "Item",
                    item_id = 251455,
                },
            },
            product = { item_id = 250603, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 2880, qty = 4 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 95, 125, 140, 155 },
        },
        {
            spell_id = 1252281,
            name = "Crusader's Silvered Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_37",
            source = {
                {
                    type = "Vendor",
                    item_id = 251384,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250532, qty = 1 },
            materials = {
                { item_id = 2841, qty = 15 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 4 },
                { item_id = 249427, qty = 4 },
                { item_id = 10938, qty = 6 },
            },
            levels = { 95, 125, 140, 155 },
        },
        {
            spell_id = 1252278,
            name = "Guard's Silvered Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_38",
            source = {
                {
                    type = "Vendor",
                    item_id = 251381,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250529, qty = 1 },
            materials = {
                { item_id = 2841, qty = 15 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 4 },
                { item_id = 249427, qty = 4 },
                { item_id = 1210, qty = 6 },
            },
            levels = { 95, 125, 140, 155 },
        },
        {
            spell_id = 1252279,
            name = "Protector's Silvered Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_39",
            source = {
                {
                    type = "Vendor",
                    item_id = 251382,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250530, qty = 1 },
            materials = {
                { item_id = 2841, qty = 15 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 4 },
                { item_id = 249427, qty = 4 },
                { item_id = 818, qty = 6 },
            },
            levels = { 95, 125, 140, 155 },
        },
        {
            spell_id = 1252277,
            name = "Veteran's Silvered Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_39",
            source = {
                {
                    type = "Vendor",
                    item_id = 251380,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250528, qty = 1 },
            materials = {
                { item_id = 2841, qty = 15 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 4 },
                { item_id = 249427, qty = 4 },
                { item_id = 5498, qty = 6 },
            },
            levels = { 95, 125, 140, 155 },
        },
    },
    [100] = {
        {
            spell_id = 3295,
            name = "Deadly Bronze Poniard",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_05",
            source = {
                {
                    type = "Item",
                    item_id = 2883,
                },
            },
            product = { item_id = 3490, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
                { item_id = 3466, qty = 1 },
                { item_id = 2459, qty = 1 },
                { item_id = 1210, qty = 2 },
                { item_id = 3478, qty = 2 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 100, 130, 145, 160 },
        },
        {
            spell_id = 8367,
            name = "Ironforge Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_plate05",
            source = {
                {
                    type = "Item",
                    item_id = 6735,
                },
            },
            product = { item_id = 6731, qty = 1 },
            materials = {
                { item_id = 2840, qty = 16 },
                { item_id = 818, qty = 2 },
                { item_id = 3470, qty = 3 },
            },
            levels = { 100, 115, 135, 155 },
        },
        {
            spell_id = 3330,
            name = "Silvered Bronze Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_09",
            source = {
                {
                    type = "Item",
                    item_id = 2882,
                },
            },
            product = { item_id = 3481, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 2842, qty = 2 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 100, 130, 145, 160 },
        },
        {
            spell_id = 1252232,
            name = "Sterling Silver Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            source = {
                {
                    type = "Item",
                    item_id = 251335,
                },
            },
            product = { item_id = 250483, qty = 1 },
            materials = {
                { item_id = 2842, qty = 6 },
                { item_id = 2840, qty = 2 },
                { item_id = 3478, qty = 2 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 100, 130, 145, 160 },
        },
    },
    [105] = {
        {
            spell_id = 2673,
            name = "Silvered Bronze Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_09",
            source = {
                {
                    type = "Item",
                    item_id = 5578,
                },
            },
            product = { item_id = 2869, qty = 1 },
            materials = {
                { item_id = 2841, qty = 10 },
                { item_id = 2842, qty = 2 },
                { item_id = 3478, qty = 2 },
                { item_id = 1705, qty = 1 },
            },
            levels = { 105, 135, 150, 165 },
        },
        {
            spell_id = 1252234,
            name = "Sterling Silver Gauntlet",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_05",
            source = {
                {
                    type = "Item",
                    item_id = 251337,
                },
            },
            product = { item_id = 250485, qty = 1 },
            materials = {
                { item_id = 2842, qty = 6 },
                { item_id = 2840, qty = 2 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 105, 135, 150, 165 },
        },
        {
            spell_id = 1252233,
            name = "Sterling Silver Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_03",
            source = {
                {
                    type = "Item",
                    item_id = 251336,
                },
            },
            product = { item_id = 250484, qty = 1 },
            materials = {
                { item_id = 2842, qty = 10 },
                { item_id = 2840, qty = 3 },
                { item_id = 3478, qty = 3 },
            },
            levels = { 105, 135, 150, 165 },
        },
    },
    [110] = {
        {
            spell_id = 1252270,
            name = "Acolyte's Silvered Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_08",
            source = {
                {
                    type = "Vendor",
                    item_id = 251373,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250521, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 5 },
                { item_id = 249427, qty = 6 },
                { item_id = 10940, qty = 8 },
            },
            levels = { 110, 140, 155, 170 },
        },
        {
            spell_id = 1317962,
            name = "Cracked Blacksmith Hammer",
            categories = { "Thrown" },
            icon = "inv_hammer_20",
            source = {
                {
                    type = "Item",
                    item_id = 285289,
                },
            },
            product = { item_id = 285279, qty = 1 },
            materials = {
                { item_id = 2841, qty = 18 },
                { item_id = 2842, qty = 2 },
                { item_id = 818, qty = 1 },
            },
            levels = { 110, 115, 117, 120 },
        },
        {
            spell_id = 1252271,
            name = "Crusader's Silvered Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_09",
            source = {
                {
                    type = "Vendor",
                    item_id = 251374,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250522, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 5 },
                { item_id = 249427, qty = 6 },
                { item_id = 10938, qty = 8 },
            },
            levels = { 110, 140, 155, 170 },
        },
        {
            spell_id = 1252268,
            name = "Guard's Silvered Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_09",
            source = {
                {
                    type = "Vendor",
                    item_id = 251371,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250519, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 5 },
                { item_id = 249427, qty = 6 },
                { item_id = 1210, qty = 8 },
            },
            levels = { 110, 140, 155, 170 },
        },
        {
            spell_id = 1252269,
            name = "Protector's Silvered Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_07",
            source = {
                {
                    type = "Vendor",
                    item_id = 251372,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250520, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 5 },
                { item_id = 249427, qty = 6 },
                { item_id = 818, qty = 8 },
            },
            levels = { 110, 140, 155, 170 },
        },
        {
            spell_id = 1252235,
            name = "Sterling Silver Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_09",
            source = {
                {
                    type = "Item",
                    item_id = 251338,
                },
            },
            product = { item_id = 250486, qty = 1 },
            materials = {
                { item_id = 2842, qty = 6 },
                { item_id = 2840, qty = 2 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 110, 140, 155, 170 },
        },
        {
            spell_id = 1252267,
            name = "Veteran's Silvered Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_07",
            source = {
                {
                    type = "Vendor",
                    item_id = 251370,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250518, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 6 },
                { item_id = 2842, qty = 5 },
                { item_id = 249427, qty = 6 },
                { item_id = 5498, qty = 8 },
            },
            levels = { 110, 140, 155, 170 },
        },
    },
    [115] = {
        {
            spell_id = 6518,
            name = "Iridescent Hammer",
            categories = { "One-Handed Maces" },
            icon = "inv_hammer_05",
            source = {
                {
                    type = "Item",
                    item_id = 5543,
                },
            },
            product = { item_id = 5541, qty = 1 },
            materials = {
                { item_id = 2841, qty = 10 },
                { item_id = 3466, qty = 1 },
                { item_id = 5500, qty = 1 },
                { item_id = 3478, qty = 2 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 115, 145, 160, 175 },
        },
    },
    [120] = {
        {
            spell_id = 3334,
            name = "Green Iron Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            source = {
                {
                    type = "Item",
                    item_id = 3611,
                },
            },
            product = { item_id = 3484, qty = 1 },
            materials = {
                { item_id = 3575, qty = 4 },
                { item_id = 1705, qty = 2 },
                { item_id = 3478, qty = 2 },
                { item_id = 2605, qty = 1 },
            },
            levels = { 120, 150, 165, 180 },
        },
        {
            spell_id = 3297,
            name = "Mighty Iron Hammer",
            categories = { "One-Handed Maces" },
            icon = "inv_hammer_04",
            source = {
                {
                    type = "Item",
                    item_id = 3608,
                },
            },
            product = { item_id = 3492, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3466, qty = 2 },
                { item_id = 3391, qty = 1 },
                { item_id = 1705, qty = 2 },
                { item_id = 3478, qty = 2 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 120, 150, 165, 180 },
        },
    },
    [125] = {
        {
            spell_id = 1252275,
            name = "Acolyte's Silvered Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_10",
            source = {
                {
                    type = "Vendor",
                    item_id = 251378,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250526, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 8 },
                { item_id = 2842, qty = 6 },
                { item_id = 249427, qty = 6 },
                { item_id = 10940, qty = 8 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 9985,
            name = "Bronze Warhammer",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_18",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 7956, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 3466, qty = 1 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 1252276,
            name = "Crusader's Silvered Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_13",
            source = {
                {
                    type = "Vendor",
                    item_id = 251379,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250527, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 8 },
                { item_id = 2842, qty = 6 },
                { item_id = 249427, qty = 6 },
                { item_id = 10938, qty = 8 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 3336,
            name = "Green Iron Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_05",
            source = {
                {
                    type = "Item",
                    item_id = 3612,
                },
            },
            product = { item_id = 3485, qty = 1 },
            materials = {
                { item_id = 3575, qty = 4 },
                { item_id = 5498, qty = 2 },
                { item_id = 3478, qty = 2 },
                { item_id = 2605, qty = 1 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 1252273,
            name = "Guard's Silvered Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_16",
            source = {
                {
                    type = "Vendor",
                    item_id = 251376,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250524, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 8 },
                { item_id = 2842, qty = 6 },
                { item_id = 249427, qty = 6 },
                { item_id = 1210, qty = 8 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 7221,
            name = "Iron Shield Spike",
            categories = { "Miscellaneous" },
            icon = "inv_misc_armorkit_01",
            source = {
                {
                    type = "Item",
                    item_id = 6044,
                },
            },
            product = { item_id = 6042, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3478, qty = 4 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 1252274,
            name = "Protector's Silvered Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_05",
            source = {
                {
                    type = "Vendor",
                    item_id = 251377,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250525, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 8 },
                { item_id = 2842, qty = 6 },
                { item_id = 249427, qty = 6 },
                { item_id = 818, qty = 8 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 1252236,
            name = "Sterling Silver Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_09",
            source = {
                {
                    type = "Item",
                    item_id = 251339,
                },
            },
            product = { item_id = 250487, qty = 1 },
            materials = {
                { item_id = 2842, qty = 12 },
                { item_id = 2840, qty = 4 },
                { item_id = 3478, qty = 3 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 1252272,
            name = "Veteran's Silvered Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_05",
            source = {
                {
                    type = "Vendor",
                    item_id = 251375,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                },
            },
            product = { item_id = 250523, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 3478, qty = 8 },
                { item_id = 2842, qty = 6 },
                { item_id = 249427, qty = 6 },
                { item_id = 5498, qty = 8 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 3538,
            name = "Blacksmithing",
            categories = { "Profession Training" },
            icon = "trade_blacksmithing",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 125 },
            cap = 225,
        },
    },
    [130] = {
        {
            spell_id = 1252353,
            name = "Iron Fists",
            categories = { "Fist Weapons" },
            icon = "inv_gauntlets_11",
            source = {
                {
                    type = "Item",
                    item_id = 251456,
                },
            },
            product = { item_id = 250604, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 1 },
                { item_id = 2842, qty = 2 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 130, 155, 167, 180 },
        },
        {
            spell_id = 12259,
            name = "Silvered Bronze Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 10424,
                },
            },
            product = { item_id = 10423, qty = 1 },
            materials = {
                { item_id = 2841, qty = 12 },
                { item_id = 2842, qty = 4 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 130, 155, 167, 180 },
        },
        {
            spell_id = 3494,
            name = "Solid Iron Maul",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_07",
            source = {
                {
                    type = "Item",
                    item_id = 10858,
                },
            },
            product = { item_id = 3851, qty = 1 },
            materials = {
                { item_id = 3575, qty = 8 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 1 },
                { item_id = 2842, qty = 4 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 130, 155, 167, 180 },
        },
    },
    [135] = {
        {
            spell_id = 9813,
            name = "Barbaric Iron Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_14",
            source = {
                {
                    type = "Item",
                    item_id = 7979,
                },
            },
            product = { item_id = 7914, qty = 1 },
            materials = {
                { item_id = 3575, qty = 20 },
                { item_id = 3486, qty = 4 },
            },
            levels = { 135, 160, 172, 185 },
        },
        {
            spell_id = 9811,
            name = "Barbaric Iron Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_23",
            source = {
                {
                    type = "Item",
                    item_id = 7978,
                },
            },
            product = { item_id = 7913, qty = 1 },
            materials = {
                { item_id = 3575, qty = 8 },
                { item_id = 5635, qty = 4 },
                { item_id = 1210, qty = 2 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 135, 160, 172, 185 },
        },
        {
            spell_id = 3504,
            name = "Green Iron Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_09",
            source = {
                {
                    type = "Item",
                    item_id = 3870,
                },
            },
            product = { item_id = 3840, qty = 1 },
            materials = {
                { item_id = 3575, qty = 7 },
                { item_id = 3486, qty = 1 },
                { item_id = 2605, qty = 1 },
            },
            levels = { 135, 160, 172, 185 },
        },
        {
            spell_id = 3492,
            name = "Hardened Iron Shortsword",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_20",
            source = {
                {
                    type = "Vendor",
                    item_id = 12162,
                    cost = 3000,
                    location = "Kaita Deepforge, Stormwind City",
                },
            },
            product = { item_id = 3849, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 1 },
                { item_id = 1705, qty = 2 },
                { item_id = 4234, qty = 3 },
            },
            levels = { 135, 160, 172, 185 },
        },
    },
    [140] = {
        {
            spell_id = 1263041,
            name = "Anvil",
            categories = { "Camping" },
            icon = "inv_blacksmith_anvil",
            source = {
                {
                    type = "Item",
                    item_id = 273086,
                },
            },
            product = { item_id = 279988, qty = 1 },
            materials = {
                { item_id = 2841, qty = 5 },
                { item_id = 3478, qty = 2 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 140, 140, 142, 145 },
        },
        {
            spell_id = 7222,
            name = "Iron Counterweight",
            categories = { "Miscellaneous" },
            icon = "inv_misc_orb_01",
            source = {
                {
                    type = "Item",
                    item_id = 6045,
                },
            },
            product = { item_id = 6043, qty = 1 },
            materials = {
                { item_id = 3575, qty = 4 },
                { item_id = 3478, qty = 2 },
                { item_id = 1705, qty = 1 },
            },
            levels = { 140, 165, 177, 190 },
        },
    },
    [145] = {
        {
            spell_id = 3495,
            name = "Golden Iron Destroyer",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_04",
            source = {
                {
                    type = "Item",
                    item_id = 3867,
                },
            },
            product = { item_id = 3852, qty = 1 },
            materials = {
                { item_id = 3575, qty = 10 },
                { item_id = 3577, qty = 4 },
                { item_id = 1705, qty = 2 },
                { item_id = 3466, qty = 2 },
                { item_id = 4234, qty = 2 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 145, 170, 182, 195 },
        },
        {
            spell_id = 3507,
            name = "Golden Scale Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 3872,
                },
            },
            product = { item_id = 3843, qty = 1 },
            materials = {
                { item_id = 3575, qty = 10 },
                { item_id = 3577, qty = 2 },
                { item_id = 3486, qty = 1 },
            },
            levels = { 145, 170, 182, 195 },
        },
        {
            spell_id = 1252282,
            name = "Hard Gold Cuirass",
            categories = { "Mail Helmets" },
            icon = "inv_chest_chain_06",
            source = {
                {
                    type = "Item",
                    item_id = 251385,
                },
            },
            product = { item_id = 250533, qty = 1 },
            materials = {
                { item_id = 3577, qty = 12 },
                { item_id = 3859, qty = 3 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 145, 170, 182, 195 },
        },
    },
    [150] = {
        {
            spell_id = 9814,
            name = "Barbaric Iron Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_25",
            source = {
                {
                    type = "Item",
                    item_id = 7980,
                },
            },
            product = { item_id = 7915, qty = 1 },
            materials = {
                { item_id = 3575, qty = 10 },
                { item_id = 5637, qty = 2 },
                { item_id = 5635, qty = 2 },
            },
            levels = { 150, 175, 187, 200 },
        },
        {
            spell_id = 3505,
            name = "Golden Scale Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_09",
            source = {
                {
                    type = "Item",
                    item_id = 3871,
                },
            },
            product = { item_id = 3841, qty = 1 },
            materials = {
                { item_id = 3859, qty = 6 },
                { item_id = 3577, qty = 2 },
                { item_id = 3486, qty = 1 },
            },
            levels = { 150, 175, 187, 200 },
        },
        {
            spell_id = 1252283,
            name = "Hard Gold Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_chain_03",
            source = {
                {
                    type = "Item",
                    item_id = 251386,
                },
            },
            product = { item_id = 250534, qty = 1 },
            materials = {
                { item_id = 3577, qty = 6 },
                { item_id = 3859, qty = 2 },
                { item_id = 3486, qty = 2 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 150, 175, 187, 200 },
        },
        {
            spell_id = 3493,
            name = "Jade Serpentblade",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_36",
            source = {
                {
                    type = "Item",
                    item_id = 3866,
                },
            },
            product = { item_id = 3850, qty = 1 },
            materials = {
                { item_id = 3575, qty = 8 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 2 },
                { item_id = 1529, qty = 2 },
                { item_id = 4234, qty = 3 },
            },
            levels = { 150, 175, 187, 200 },
        },
        {
            spell_id = 1252309,
            name = "Justicar's Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_13",
            source = {
                {
                    type = "Item",
                    item_id = 251412,
                },
            },
            product = { item_id = 250560, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3486, qty = 2 },
                { item_id = 7079, qty = 2 },
            },
            levels = { 150, 155, 155, 155 },
        },
        {
            spell_id = 1252305,
            name = "Officer's Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_20",
            source = {
                {
                    type = "Item",
                    item_id = 251408,
                },
            },
            product = { item_id = 250556, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3486, qty = 2 },
                { item_id = 1529, qty = 2 },
            },
            levels = { 150, 155, 155, 155 },
        },
        {
            spell_id = 1252308,
            name = "Prefect's Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_08",
            source = {
                {
                    type = "Item",
                    item_id = 251411,
                },
            },
            product = { item_id = 250559, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3486, qty = 2 },
                { item_id = 13926, qty = 2 },
            },
            levels = { 150, 155, 155, 155 },
        },
        {
            spell_id = 1252306,
            name = "Sentinel's Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_37a",
            source = {
                {
                    type = "Item",
                    item_id = 251409,
                },
            },
            product = { item_id = 250557, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3486, qty = 2 },
                { item_id = 8831, qty = 2 },
            },
            levels = { 150, 155, 155, 155 },
        },
        {
            spell_id = 1252307,
            name = "Warder's Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_29",
            source = {
                {
                    type = "Item",
                    item_id = 251410,
                },
            },
            product = { item_id = 250558, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 3486, qty = 2 },
                { item_id = 7971, qty = 2 },
            },
            levels = { 150, 155, 155, 155 },
        },
    },
    [155] = {
        {
            spell_id = 9818,
            name = "Barbaric Iron Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_plate_01",
            source = {
                {
                    type = "Item",
                    item_id = 7981,
                },
            },
            product = { item_id = 7916, qty = 1 },
            materials = {
                { item_id = 3575, qty = 12 },
                { item_id = 5637, qty = 4 },
                { item_id = 818, qty = 4 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 155, 180, 192, 205 },
        },
        {
            spell_id = 3496,
            name = "Moonsteel Broadsword",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_25",
            source = {
                {
                    type = "Vendor",
                    item_id = 12163,
                    cost = 4400,
                    location = "Zarena Cromwind, Stranglethorn Vale",
                },
            },
            product = { item_id = 3853, qty = 1 },
            materials = {
                { item_id = 3859, qty = 8 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 2 },
                { item_id = 1705, qty = 3 },
                { item_id = 4234, qty = 3 },
            },
            levels = { 155, 180, 192, 205 },
        },
    },
    [160] = {
        {
            spell_id = 9820,
            name = "Barbaric Iron Gloves",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_31",
            source = {
                {
                    type = "Item",
                    item_id = 7982,
                },
            },
            product = { item_id = 7917, qty = 1 },
            materials = {
                { item_id = 3575, qty = 14 },
                { item_id = 3486, qty = 3 },
                { item_id = 5637, qty = 2 },
            },
            levels = { 160, 185, 197, 210 },
        },
        {
            spell_id = 1252284,
            name = "Hard Gold Bracers",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_28a",
            source = {
                {
                    type = "Item",
                    item_id = 251387,
                },
            },
            product = { item_id = 250535, qty = 1 },
            materials = {
                { item_id = 3577, qty = 6 },
                { item_id = 3859, qty = 1 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 160, 185, 197, 210 },
        },
        {
            spell_id = 3498,
            name = "Massive Iron Axe",
            categories = { "Two-Handed Axes" },
            icon = "inv_throwingaxe_05",
            source = {
                {
                    type = "Item",
                    item_id = 12164,
                },
            },
            product = { item_id = 3855, qty = 1 },
            materials = {
                { item_id = 3575, qty = 14 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 2 },
                { item_id = 3577, qty = 4 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 160, 185, 197, 210 },
        },
        {
            spell_id = 3513,
            name = "Polished Steel Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            source = {
                {
                    type = "Item",
                    item_id = 3874,
                },
            },
            product = { item_id = 3846, qty = 1 },
            materials = {
                { item_id = 3859, qty = 8 },
                { item_id = 3864, qty = 1 },
                { item_id = 1705, qty = 1 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 160, 185, 197, 210 },
        },
        {
            spell_id = 1252354,
            name = "Steel Spear",
            categories = { "Polearms" },
            icon = "inv_spear_08",
            source = {
                {
                    type = "Item",
                    item_id = 251457,
                },
            },
            product = { item_id = 250605, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3466, qty = 2 },
                { item_id = 7069, qty = 1 },
                { item_id = 3486, qty = 4 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 160, 185, 197, 210 },
        },
    },
    [165] = {
        {
            spell_id = 21913,
            name = "Edge of Winter",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_06",
            source = {
                {
                    type = "Item",
                    item_id = 17706,
                },
            },
            product = { item_id = 17704, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3829, qty = 1 },
                { item_id = 7070, qty = 2 },
                { item_id = 7069, qty = 2 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 165, 190, 202, 215 },
        },
        {
            spell_id = 3503,
            name = "Golden Scale Coif",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_36",
            source = {
                {
                    type = "Vendor",
                    item_id = 6047,
                    cost = 4400,
                    location = "Krinkle Goodsteel, Tanaris",
                },
            },
            product = { item_id = 3837, qty = 1 },
            materials = {
                { item_id = 3859, qty = 8 },
                { item_id = 3577, qty = 2 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 165, 190, 202, 215 },
        },
        {
            spell_id = 1252285,
            name = "Hard Gold Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_13",
            source = {
                {
                    type = "Item",
                    item_id = 251388,
                },
            },
            product = { item_id = 250536, qty = 1 },
            materials = {
                { item_id = 3577, qty = 10 },
                { item_id = 3859, qty = 2 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 165, 190, 202, 215 },
        },
        {
            spell_id = 1252355,
            name = "Iron Morningstar",
            categories = { "One-Handed Maces" },
            icon = "inv_mace_15",
            source = {
                {
                    type = "Item",
                    item_id = 251458,
                },
            },
            product = { item_id = 250606, qty = 1 },
            materials = {
                { item_id = 3575, qty = 14 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 2 },
                { item_id = 3864, qty = 4 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 165, 190, 202, 215 },
        },
        {
            spell_id = 15973,
            name = "Searing Golden Blade",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_05",
            source = {
                {
                    type = "Item",
                    item_id = 12261,
                },
            },
            product = { item_id = 12260, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3577, qty = 4 },
                { item_id = 7068, qty = 2 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 165, 190, 202, 215 },
        },
        {
            spell_id = 7224,
            name = "Steel Weapon Chain",
            categories = { "Miscellaneous" },
            icon = "spell_frost_chainsofice",
            source = {
                {
                    type = "Item",
                    item_id = 6046,
                },
            },
            product = { item_id = 6041, qty = 1 },
            materials = {
                { item_id = 3859, qty = 8 },
                { item_id = 3486, qty = 2 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 165, 190, 202, 215 },
        },
    },
    [170] = {
        {
            spell_id = 3511,
            name = "Golden Scale Cuirass",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_06",
            source = {
                {
                    type = "Item",
                    item_id = 3873,
                },
            },
            product = { item_id = 3845, qty = 1 },
            materials = {
                { item_id = 3859, qty = 12 },
                { item_id = 3577, qty = 2 },
                { item_id = 3486, qty = 4 },
                { item_id = 1529, qty = 2 },
            },
            levels = { 170, 195, 207, 220 },
        },
        {
            spell_id = 1252286,
            name = "Hard Gold Coif",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_39",
            source = {
                {
                    type = "Item",
                    item_id = 251389,
                },
            },
            product = { item_id = 250537, qty = 1 },
            materials = {
                { item_id = 3577, qty = 10 },
                { item_id = 3859, qty = 2 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 170, 195, 207, 220 },
        },
    },
    [175] = {
        {
            spell_id = 1301534,
            name = "Azure Skyforged Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helm_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276984,
                },
            },
            product = { item_id = 277048, qty = 1 },
            materials = {
                { item_id = 3575, qty = 18 },
                { item_id = 3486, qty = 5 },
                { item_id = 7909, qty = 1 },
            },
            levels = { 175, 185, 187, 190 },
        },
        {
            spell_id = 1301535,
            name = "Azure Skyforged Pauldrons",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276985,
                },
            },
            product = { item_id = 277049, qty = 1 },
            materials = {
                { item_id = 3575, qty = 14 },
                { item_id = 3486, qty = 3 },
                { item_id = 7909, qty = 1 },
            },
            levels = { 175, 185, 187, 190 },
        },
        {
            spell_id = 1301526,
            name = "Cloudy Skyforged Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helm_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276976,
                },
            },
            product = { item_id = 277040, qty = 1 },
            materials = {
                { item_id = 3575, qty = 18 },
                { item_id = 3486, qty = 5 },
                { item_id = 5498, qty = 1 },
            },
            levels = { 175, 185, 187, 190 },
        },
        {
            spell_id = 1301527,
            name = "Cloudy Skyforged Pauldrons",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_mail_skybornec60_b_01",
            source = {
                {
                    type = "Item",
                    item_id = 276977,
                },
            },
            product = { item_id = 277041, qty = 1 },
            materials = {
                { item_id = 3575, qty = 14 },
                { item_id = 3486, qty = 3 },
                { item_id = 5498, qty = 1 },
            },
            levels = { 175, 185, 187, 190 },
        },
        {
            spell_id = 3497,
            name = "Frost Tiger Blade",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_05",
            source = {
                {
                    type = "Item",
                    item_id = 3868,
                },
            },
            product = { item_id = 3854, qty = 1 },
            materials = {
                { item_id = 3859, qty = 8 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 2 },
                { item_id = 1529, qty = 2 },
                { item_id = 3829, qty = 1 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 3515,
            name = "Golden Scale Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            source = {
                {
                    type = "Item",
                    item_id = 3875,
                },
            },
            product = { item_id = 3847, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3577, qty = 4 },
                { item_id = 3486, qty = 4 },
                { item_id = 3864, qty = 1 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 1252287,
            name = "Hard Gold Gauntlet",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_29",
            source = {
                {
                    type = "Item",
                    item_id = 251390,
                },
            },
            product = { item_id = 250538, qty = 1 },
            materials = {
                { item_id = 3577, qty = 8 },
                { item_id = 3859, qty = 2 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 1252288,
            name = "Hard Gold Pauldrons",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_28",
            source = {
                {
                    type = "Item",
                    item_id = 251391,
                },
            },
            product = { item_id = 250539, qty = 1 },
            materials = {
                { item_id = 3577, qty = 8 },
                { item_id = 3859, qty = 2 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 1252319,
            name = "Justicar's Gauntlet",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_30",
            source = {
                {
                    type = "Vendor",
                    item_id = 251422,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250570, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3486, qty = 4 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 7079, qty = 4 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 1252315,
            name = "Officer's Gauntlet",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_51",
            source = {
                {
                    type = "Vendor",
                    item_id = 251418,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250566, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3486, qty = 4 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 1529, qty = 4 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 1252318,
            name = "Prefect's Gauntlet",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_26",
            source = {
                {
                    type = "Vendor",
                    item_id = 251421,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250569, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3486, qty = 4 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 13926, qty = 4 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 1252316,
            name = "Sentinel's Gauntlet",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_22",
            source = {
                {
                    type = "Vendor",
                    item_id = 251419,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250567, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3486, qty = 4 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 8831, qty = 4 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 3500,
            name = "Shadow Crescent Axe",
            categories = { "Two-Handed Axes" },
            icon = "inv_axe_17",
            source = {
                {
                    type = "Item",
                    item_id = 3869,
                },
            },
            product = { item_id = 3856, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 3 },
                { item_id = 3864, qty = 2 },
                { item_id = 3824, qty = 1 },
                { item_id = 4234, qty = 3 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 1252317,
            name = "Warder's Gauntlet",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_50",
            source = {
                {
                    type = "Vendor",
                    item_id = 251420,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250568, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3486, qty = 4 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 7971, qty = 4 },
            },
            levels = { 175, 200, 212, 225 },
        },
    },
    [180] = {
        {
            spell_id = 11643,
            name = "Golden Scale Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_29",
            source = {
                {
                    type = "Item",
                    item_id = 9367,
                },
            },
            product = { item_id = 9366, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3577, qty = 4 },
                { item_id = 3486, qty = 4 },
                { item_id = 3864, qty = 1 },
            },
            levels = { 180, 200, 210, 220 },
        },
        {
            spell_id = 1252356,
            name = "Mithril Shortsword",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_05",
            source = {
                {
                    type = "Item",
                    item_id = 251459,
                },
            },
            product = { item_id = 250607, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 3466, qty = 2 },
                { item_id = 3486, qty = 2 },
                { item_id = 1705, qty = 4 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 180, 200, 210, 220 },
        },
    },
    [185] = {
        {
            spell_id = 9933,
            name = "Heavy Mithril Pants",
            categories = { "Plate Legguards" },
            icon = "inv_pants_03",
            source = {
                {
                    type = "Item",
                    item_id = 7975,
                },
            },
            product = { item_id = 7921, qty = 1 },
            materials = {
                { item_id = 3860, qty = 10 },
                { item_id = 1705, qty = 2 },
            },
            levels = { 185, 205, 215, 225 },
        },
    },
    [190] = {
        {
            spell_id = 9937,
            name = "Mithril Plate Bracers",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_07",
            source = {
                {
                    type = "Item",
                    item_id = 7995,
                },
            },
            product = { item_id = 7924, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 3864, qty = 2 },
            },
            levels = { 190, 210, 220, 230 },
        },
        {
            spell_id = 9939,
            name = "Mithril Shield Spike",
            categories = { "Miscellaneous" },
            icon = "inv_misc_armorkit_02",
            source = {
                {
                    type = "Item",
                    item_id = 7976,
                },
            },
            product = { item_id = 7967, qty = 1 },
            materials = {
                { item_id = 3860, qty = 4 },
                { item_id = 6037, qty = 2 },
                { item_id = 7966, qty = 4 },
            },
            levels = { 190, 210, 220, 230 },
        },
        {
            spell_id = 1252357,
            name = "Mithril Warhammer",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_03",
            source = {
                {
                    type = "Vendor",
                    item_id = 251460,
                    cost = 7500,
                    location = "Martha Wellsworth, Riverglades",
                },
            },
            product = { item_id = 250608, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
                { item_id = 3864, qty = 2 },
                { item_id = 7966, qty = 1 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 190, 210, 220, 230 },
        },
    },
    [195] = {
        {
            spell_id = 9995,
            name = "Blue Glittering Axe",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_03",
            source = {
                {
                    type = "Item",
                    item_id = 7992,
                },
            },
            product = { item_id = 7942, qty = 1 },
            materials = {
                { item_id = 3860, qty = 16 },
                { item_id = 7909, qty = 2 },
                { item_id = 7966, qty = 1 },
                { item_id = 4304, qty = 4 },
            },
            levels = { 195, 220, 232, 245 },
        },
        {
            spell_id = 1317963,
            name = "Mithril Blacksmith Hammer",
            categories = { "Thrown" },
            icon = "inv_hammer_20",
            source = {
                {
                    type = "Item",
                    item_id = 285290,
                },
            },
            product = { item_id = 285280, qty = 1 },
            materials = {
                { item_id = 3860, qty = 10 },
                { item_id = 3577, qty = 2 },
                { item_id = 7910, qty = 1 },
            },
            levels = { 195, 200, 202, 205 },
        },
        {
            spell_id = 1252358,
            name = "Mithril Claws",
            categories = { "Fist Weapons" },
            icon = "inv_misc_monsterclaw_02",
            source = {
                {
                    type = "Item",
                    item_id = 251461,
                },
            },
            product = { item_id = 250609, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 1529, qty = 1 },
                { item_id = 7966, qty = 1 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 195, 215, 225, 235 },
        },
        {
            spell_id = 1252359,
            name = "Mithril Claymore",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_23",
            source = {
                {
                    type = "Item",
                    item_id = 251462,
                },
            },
            product = { item_id = 250610, qty = 1 },
            materials = {
                { item_id = 3860, qty = 16 },
                { item_id = 3577, qty = 6 },
                { item_id = 7966, qty = 2 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 195, 215, 225, 235 },
        },
        {
            spell_id = 9950,
            name = "Ornate Mithril Gloves",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_31",
            source = {
                {
                    type = "Item",
                    item_id = 7984,
                },
            },
            product = { item_id = 7927, qty = 1 },
            materials = {
                { item_id = 3860, qty = 10 },
                { item_id = 4338, qty = 6 },
                { item_id = 6037, qty = 1 },
                { item_id = 7966, qty = 1 },
            },
            levels = { 195, 215, 225, 235 },
        },
        {
            spell_id = 9945,
            name = "Ornate Mithril Pants",
            categories = { "Plate Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 7983,
                },
            },
            product = { item_id = 7926, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
                { item_id = 6037, qty = 1 },
                { item_id = 7966, qty = 1 },
                { item_id = 7909, qty = 1 },
            },
            levels = { 195, 215, 225, 235 },
        },
        {
            spell_id = 1252289,
            name = "Shining Mithril Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate01",
            source = {
                {
                    type = "Item",
                    item_id = 251392,
                },
            },
            product = { item_id = 250540, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 6037, qty = 9 },
                { item_id = 3486, qty = 2 },
                { item_id = 7971, qty = 2 },
            },
            levels = { 195, 215, 225, 235 },
        },
        {
            spell_id = 1252290,
            name = "Shining Mithril Pauldrons",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_29",
            source = {
                {
                    type = "Item",
                    item_id = 251393,
                },
            },
            product = { item_id = 250541, qty = 1 },
            materials = {
                { item_id = 3860, qty = 6 },
                { item_id = 6037, qty = 3 },
                { item_id = 3486, qty = 2 },
                { item_id = 4304, qty = 2 },
            },
            levels = { 195, 215, 225, 235 },
        },
    },
    [200] = {
        {
            spell_id = 11454,
            name = "Inlaid Mithril Cylinder",
            categories = { "Reagents" },
            icon = "inv_musket_01",
            source = {
                {
                    type = "Item",
                    item_id = 10713,
                },
            },
            product = { item_id = 9060, qty = 1 },
            materials = {
                { item_id = 3860, qty = 5 },
                { item_id = 3577, qty = 1 },
                { item_id = 6037, qty = 1 },
            },
            levels = { 200, 200, 212, 225 },
        },
        {
            spell_id = 1252299,
            name = "Justicar's Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_05",
            source = {
                {
                    type = "Item",
                    item_id = 251402,
                },
            },
            product = { item_id = 250550, qty = 1 },
            materials = {
                { item_id = 3859, qty = 4 },
                { item_id = 3486, qty = 4 },
                { item_id = 7079, qty = 4 },
            },
            levels = { 200, 205, 205, 205 },
        },
        {
            spell_id = 1252295,
            name = "Officer's Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_19v2",
            source = {
                {
                    type = "Item",
                    item_id = 251398,
                },
            },
            product = { item_id = 250546, qty = 1 },
            materials = {
                { item_id = 3859, qty = 4 },
                { item_id = 3486, qty = 4 },
                { item_id = 1529, qty = 4 },
            },
            levels = { 200, 205, 205, 205 },
        },
        {
            spell_id = 9952,
            name = "Ornate Mithril Shoulders",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_09",
            source = {
                {
                    type = "Item",
                    item_id = 7985,
                },
            },
            product = { item_id = 7928, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
                { item_id = 6037, qty = 1 },
                { item_id = 4304, qty = 6 },
            },
            levels = { 200, 220, 230, 240 },
        },
        {
            spell_id = 1252298,
            name = "Prefect's Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_19v3",
            source = {
                {
                    type = "Item",
                    item_id = 251401,
                },
            },
            product = { item_id = 250549, qty = 1 },
            materials = {
                { item_id = 3859, qty = 4 },
                { item_id = 3486, qty = 4 },
                { item_id = 13926, qty = 4 },
            },
            levels = { 200, 205, 205, 205 },
        },
        {
            spell_id = 1252296,
            name = "Sentinel's Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_20v1",
            source = {
                {
                    type = "Item",
                    item_id = 251399,
                },
            },
            product = { item_id = 250547, qty = 1 },
            materials = {
                { item_id = 3859, qty = 4 },
                { item_id = 3486, qty = 4 },
                { item_id = 8831, qty = 4 },
            },
            levels = { 200, 205, 205, 205 },
        },
        {
            spell_id = 1252291,
            name = "Shining Mithril Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_02",
            source = {
                {
                    type = "Item",
                    item_id = 251394,
                },
            },
            product = { item_id = 250542, qty = 1 },
            materials = {
                { item_id = 3860, qty = 4 },
                { item_id = 6037, qty = 3 },
                { item_id = 3486, qty = 2 },
                { item_id = 4304, qty = 4 },
            },
            levels = { 200, 220, 230, 240 },
        },
        {
            spell_id = 1252297,
            name = "Warder's Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_19v1",
            source = {
                {
                    type = "Item",
                    item_id = 251400,
                },
            },
            product = { item_id = 250548, qty = 1 },
            materials = {
                { item_id = 3859, qty = 4 },
                { item_id = 3486, qty = 4 },
                { item_id = 7971, qty = 4 },
            },
            levels = { 200, 205, 205, 205 },
        },
        {
            spell_id = 9997,
            name = "Wicked Mithril Blade",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_10",
            source = {
                {
                    type = "Item",
                    item_id = 8029,
                },
            },
            product = { item_id = 7943, qty = 1 },
            materials = {
                { item_id = 3860, qty = 14 },
                { item_id = 6037, qty = 4 },
                { item_id = 7966, qty = 1 },
                { item_id = 4304, qty = 2 },
            },
            levels = { 200, 225, 237, 250 },
        },
        {
            spell_id = 9785,
            name = "Blacksmithing",
            categories = { "Profession Training" },
            icon = "trade_blacksmithing",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 200 },
            cap = 300,
        },
    },
    [210] = {
        {
            spell_id = 1252329,
            name = "Justicar's Pauldrons",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_22",
            source = {
                {
                    type = "Vendor",
                    item_id = 251432,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250580, qty = 1 },
            materials = {
                { item_id = 3860, qty = 20 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 7079, qty = 8 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 9966,
            name = "Mithril Plate Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_12",
            source = {
                {
                    type = "Item",
                    item_id = 7991,
                },
            },
            product = { item_id = 7932, qty = 1 },
            materials = {
                { item_id = 3860, qty = 14 },
                { item_id = 4304, qty = 4 },
                { item_id = 3864, qty = 4 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 9964,
            name = "Mithril Spurs",
            categories = { "Miscellaneous" },
            icon = "ability_rogue_sprint",
            source = {
                {
                    type = "Item",
                    item_id = 7989,
                },
            },
            product = { item_id = 7969, qty = 1 },
            materials = {
                { item_id = 3860, qty = 4 },
                { item_id = 7966, qty = 3 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 1252360,
            name = "Mithril Stiletto",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_05",
            source = {
                {
                    type = "Item",
                    item_id = 251463,
                },
            },
            product = { item_id = 250611, qty = 1 },
            materials = {
                { item_id = 3860, qty = 16 },
                { item_id = 1210, qty = 6 },
                { item_id = 3577, qty = 2 },
                { item_id = 7966, qty = 1 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 1252325,
            name = "Officer's Pauldrons",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_13",
            source = {
                {
                    type = "Vendor",
                    item_id = 251428,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250576, qty = 1 },
            materials = {
                { item_id = 3860, qty = 20 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 1529, qty = 8 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 1252328,
            name = "Prefect's Pauldrons",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_20",
            source = {
                {
                    type = "Vendor",
                    item_id = 251431,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250579, qty = 1 },
            materials = {
                { item_id = 3860, qty = 20 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 13926, qty = 8 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 1252326,
            name = "Sentinel's Pauldrons",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_12",
            source = {
                {
                    type = "Vendor",
                    item_id = 251429,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250577, qty = 1 },
            materials = {
                { item_id = 3860, qty = 20 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 8831, qty = 8 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 1252327,
            name = "Warder's Pauldrons",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_03",
            source = {
                {
                    type = "Vendor",
                    item_id = 251430,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 250578, qty = 1 },
            materials = {
                { item_id = 3860, qty = 20 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 7971, qty = 8 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 210, 230, 240, 250 },
        },
    },
    [215] = {
        {
            spell_id = 1252361,
            name = "Charged Mithril Battleaxe",
            categories = { "Two-Handed Axes" },
            icon = "inv_axe_09",
            source = {
                {
                    type = "Item",
                    item_id = 251464,
                },
            },
            product = { item_id = 250612, qty = 1 },
            materials = {
                { item_id = 3860, qty = 20 },
                { item_id = 7082, qty = 6 },
                { item_id = 7966, qty = 4 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 215, 235, 245, 255 },
        },
        {
            spell_id = 10005,
            name = "Dazzling Mithril Rapier",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_30",
            source = {
                {
                    type = "Item",
                    item_id = 7993,
                },
            },
            product = { item_id = 7944, qty = 1 },
            materials = {
                { item_id = 3860, qty = 14 },
                { item_id = 7909, qty = 1 },
                { item_id = 1705, qty = 2 },
                { item_id = 1206, qty = 2 },
                { item_id = 7966, qty = 1 },
                { item_id = 4338, qty = 2 },
            },
            levels = { 215, 240, 252, 265 },
        },
    },
    [220] = {
        {
            spell_id = 9970,
            name = "Heavy Mithril Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_10",
            source = {
                {
                    type = "Item",
                    item_id = 7990,
                },
            },
            product = { item_id = 7934, qty = 1 },
            materials = {
                { item_id = 3860, qty = 14 },
                { item_id = 7909, qty = 1 },
            },
            levels = { 220, 230, 240, 250 },
        },
        {
            spell_id = 10009,
            name = "Runed Mithril Hammer",
            categories = { "One-Handed Maces" },
            icon = "inv_hammer_17",
            source = {
                {
                    type = "Item",
                    item_id = 8028,
                },
            },
            product = { item_id = 7946, qty = 1 },
            materials = {
                { item_id = 3860, qty = 18 },
                { item_id = 7075, qty = 2 },
                { item_id = 7966, qty = 1 },
                { item_id = 4304, qty = 4 },
            },
            levels = { 220, 245, 257, 270 },
        },
        {
            spell_id = 1252294,
            name = "Shining Mithril Gauntlet",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_28",
            source = {
                {
                    type = "Item",
                    item_id = 251397,
                },
            },
            product = { item_id = 250545, qty = 1 },
            materials = {
                { item_id = 3860, qty = 5 },
                { item_id = 6037, qty = 6 },
                { item_id = 3486, qty = 2 },
                { item_id = 7909, qty = 2 },
            },
            levels = { 220, 240, 250, 260 },
        },
        {
            spell_id = 1252293,
            name = "Shining Mithril Pants",
            categories = { "Plate Legguards" },
            icon = "inv_pants_plate_16",
            source = {
                {
                    type = "Item",
                    item_id = 251396,
                },
            },
            product = { item_id = 250544, qty = 1 },
            materials = {
                { item_id = 3860, qty = 6 },
                { item_id = 6037, qty = 9 },
                { item_id = 3486, qty = 2 },
                { item_id = 7075, qty = 1 },
            },
            levels = { 220, 240, 250, 260 },
        },
    },
    [225] = {
        {
            spell_id = 1252334,
            name = "Justicar's Wristguards",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_22a",
            source = {
                {
                    type = "Vendor",
                    item_id = 251437,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250585, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 7079, qty = 6 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 1252330,
            name = "Officer's Wristguards",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_22c",
            source = {
                {
                    type = "Vendor",
                    item_id = 251433,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250581, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 1529, qty = 6 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 1252333,
            name = "Prefect's Wristguards",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_21b",
            source = {
                {
                    type = "Vendor",
                    item_id = 251436,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250584, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 13926, qty = 6 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 1252331,
            name = "Sentinel's Wristguards",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_23a",
            source = {
                {
                    type = "Vendor",
                    item_id = 251434,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250582, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 8831, qty = 6 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 16642,
            name = "Thorium Armor",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate08",
            source = {
                {
                    type = "Item",
                    item_id = 12682,
                },
            },
            product = { item_id = 12405, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 12361, qty = 1 },
                { item_id = 11188, qty = 4 },
            },
            levels = { 225, 245, 255, 265 },
        },
        {
            spell_id = 16643,
            name = "Thorium Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_30",
            source = {
                {
                    type = "Item",
                    item_id = 12683,
                },
            },
            product = { item_id = 12406, qty = 1 },
            materials = {
                { item_id = 12359, qty = 12 },
                { item_id = 11186, qty = 4 },
            },
            levels = { 225, 245, 255, 265 },
        },
        {
            spell_id = 1252332,
            name = "Warder's Wristguards",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_14",
            source = {
                {
                    type = "Vendor",
                    item_id = 251435,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250583, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 7966, qty = 2 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 7971, qty = 6 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
    },
    [230] = {
        {
            spell_id = 10013,
            name = "Ebon Shiv",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_14",
            source = {
                {
                    type = "Item",
                    item_id = 8030,
                },
            },
            product = { item_id = 7947, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
                { item_id = 6037, qty = 6 },
                { item_id = 7910, qty = 2 },
                { item_id = 7966, qty = 1 },
                { item_id = 4304, qty = 2 },
            },
            levels = { 230, 255, 267, 280 },
        },
        {
            spell_id = 16644,
            name = "Thorium Bracers",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_13",
            source = {
                {
                    type = "Item",
                    item_id = 12684,
                },
            },
            product = { item_id = 12408, qty = 1 },
            materials = {
                { item_id = 12359, qty = 12 },
                { item_id = 11184, qty = 4 },
            },
            levels = { 230, 250, 260, 270 },
        },
    },
    [235] = {
        {
            spell_id = 16645,
            name = "Radiant Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_11",
            source = {
                {
                    type = "Item",
                    item_id = 12685,
                },
            },
            product = { item_id = 12416, qty = 1 },
            materials = {
                { item_id = 12359, qty = 10 },
                { item_id = 7077, qty = 2 },
            },
            levels = { 235, 255, 265, 275 },
        },
    },
    [240] = {
        {
            spell_id = 1252336,
            name = "Blessed Plate Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_03",
            source = {
                {
                    type = "Item",
                    item_id = 251439,
                },
            },
            product = { item_id = 250587, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 12361, qty = 1 },
                { item_id = 8170, qty = 6 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 1252335,
            name = "Blessed Plate Pauldrons",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_10",
            source = {
                {
                    type = "Item",
                    item_id = 251438,
                },
            },
            product = { item_id = 250586, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12361, qty = 1 },
                { item_id = 8170, qty = 6 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 15292,
            name = "Dark Iron Pulverizer",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_09",
            source = {
                {
                    type = "Item",
                    item_id = 11610,
                },
            },
            product = { item_id = 11608, qty = 1 },
            materials = {
                { item_id = 11371, qty = 18 },
                { item_id = 7077, qty = 4 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 16647,
            name = "Imperial Plate Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_01",
            source = {
                {
                    type = "Item",
                    item_id = 12688,
                },
            },
            product = { item_id = 12424, qty = 1 },
            materials = {
                { item_id = 12359, qty = 22 },
                { item_id = 8170, qty = 6 },
                { item_id = 7909, qty = 1 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 16646,
            name = "Imperial Plate Shoulders",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_02",
            source = {
                {
                    type = "Item",
                    item_id = 12687,
                },
            },
            product = { item_id = 12428, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 8170, qty = 6 },
                { item_id = 3864, qty = 2 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 1252314,
            name = "Justicar's Sabatons",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_05",
            source = {
                {
                    type = "Vendor",
                    item_id = 251417,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250565, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 7966, qty = 3 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 4 },
                { item_id = 7079, qty = 6 },
                { item_id = 249427, qty = 4 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 1252310,
            name = "Officer's Sabatons",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_19v2",
            source = {
                {
                    type = "Vendor",
                    item_id = 251413,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250561, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 7966, qty = 3 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 4 },
                { item_id = 1529, qty = 6 },
                { item_id = 249427, qty = 4 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 1252313,
            name = "Prefect's Sabatons",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_19v3",
            source = {
                {
                    type = "Vendor",
                    item_id = 251416,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250564, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 7966, qty = 3 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 4 },
                { item_id = 13926, qty = 6 },
                { item_id = 249427, qty = 4 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 1252311,
            name = "Sentinel's Sabatons",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_20v1",
            source = {
                {
                    type = "Vendor",
                    item_id = 251414,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250562, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 7966, qty = 3 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 4 },
                { item_id = 8831, qty = 6 },
                { item_id = 249427, qty = 4 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 1252312,
            name = "Warder's Sabatons",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_19v1",
            source = {
                {
                    type = "Vendor",
                    item_id = 251415,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250563, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 7966, qty = 3 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 4 },
                { item_id = 7971, qty = 6 },
                { item_id = 249427, qty = 4 },
            },
            levels = { 240, 260, 270, 280 },
        },
    },
    [245] = {
        {
            spell_id = 1252337,
            name = "Blessed Plate Gauntlet",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_29",
            source = {
                {
                    type = "Item",
                    item_id = 251440,
                },
            },
            product = { item_id = 250588, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12361, qty = 2 },
            },
            levels = { 245, 265, 275, 285 },
        },
        {
            spell_id = 15293,
            name = "Dark Iron Mail",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_16",
            source = {
                {
                    type = "Item",
                    item_id = 11614,
                },
            },
            product = { item_id = 11606, qty = 1 },
            materials = {
                { item_id = 11371, qty = 10 },
                { item_id = 7077, qty = 2 },
            },
            levels = { 245, 265, 275, 285 },
        },
        {
            spell_id = 16649,
            name = "Imperial Plate Bracers",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_19",
            source = {
                {
                    type = "Item",
                    item_id = 12690,
                },
            },
            product = { item_id = 12425, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 7910, qty = 1 },
            },
            levels = { 245, 265, 275, 285 },
        },
        {
            spell_id = 16648,
            name = "Radiant Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_plate16",
            source = {
                {
                    type = "Item",
                    item_id = 12689,
                },
            },
            product = { item_id = 12415, qty = 1 },
            materials = {
                { item_id = 12359, qty = 18 },
                { item_id = 7077, qty = 2 },
                { item_id = 7910, qty = 1 },
            },
            levels = { 245, 265, 275, 285 },
        },
    },
    [250] = {
        {
            spell_id = 15294,
            name = "Dark Iron Sunderer",
            categories = { "Two-Handed Axes" },
            icon = "inv_weapon_halberd_02",
            source = {
                {
                    type = "Item",
                    item_id = 11611,
                },
            },
            product = { item_id = 11607, qty = 1 },
            materials = {
                { item_id = 11371, qty = 26 },
                { item_id = 7077, qty = 4 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 16970,
            name = "Dawn's Edge",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_05",
            source = {
                {
                    type = "Item",
                    item_id = 12821,
                },
            },
            product = { item_id = 12774, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 12655, qty = 4 },
                { item_id = 7910, qty = 4 },
                { item_id = 12361, qty = 4 },
                { item_id = 12644, qty = 2 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 250, 275, 287, 300 },
        },
        {
            spell_id = 1252304,
            name = "Justicar's Gloves",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_30",
            source = {
                {
                    type = "Item",
                    item_id = 251407,
                },
            },
            product = { item_id = 250555, qty = 1 },
            materials = {
                { item_id = 12359, qty = 8 },
                { item_id = 7966, qty = 4 },
                { item_id = 7079, qty = 4 },
            },
            levels = { 250, 255, 255, 255 },
        },
        {
            spell_id = 1252324,
            name = "Justicar's Waistguard",
            categories = { "Plate Belts" },
            icon = "inv_belt_13",
            source = {
                {
                    type = "Vendor",
                    item_id = 251427,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250575, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 7966, qty = 4 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 6 },
                { item_id = 7079, qty = 10 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 1252300,
            name = "Officer's Gloves",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_51",
            source = {
                {
                    type = "Item",
                    item_id = 251403,
                },
            },
            product = { item_id = 250551, qty = 1 },
            materials = {
                { item_id = 12359, qty = 8 },
                { item_id = 7966, qty = 4 },
                { item_id = 1529, qty = 4 },
            },
            levels = { 250, 255, 255, 255 },
        },
        {
            spell_id = 1252320,
            name = "Officer's Waistguard",
            categories = { "Plate Belts" },
            icon = "inv_belt_20",
            source = {
                {
                    type = "Vendor",
                    item_id = 251423,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250571, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 7966, qty = 4 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 6 },
                { item_id = 1529, qty = 10 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 16969,
            name = "Ornate Thorium Handaxe",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_12",
            source = {
                {
                    type = "Item",
                    item_id = 12819,
                },
            },
            product = { item_id = 12773, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12799, qty = 2 },
                { item_id = 12644, qty = 2 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 250, 275, 287, 300 },
        },
        {
            spell_id = 1252303,
            name = "Prefect's Gloves",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_26",
            source = {
                {
                    type = "Item",
                    item_id = 251406,
                },
            },
            product = { item_id = 250554, qty = 1 },
            materials = {
                { item_id = 12359, qty = 8 },
                { item_id = 7966, qty = 4 },
                { item_id = 13926, qty = 4 },
            },
            levels = { 250, 255, 255, 255 },
        },
        {
            spell_id = 1252301,
            name = "Sentinel's Gloves",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_22",
            source = {
                {
                    type = "Item",
                    item_id = 251404,
                },
            },
            product = { item_id = 250552, qty = 1 },
            materials = {
                { item_id = 12359, qty = 8 },
                { item_id = 7966, qty = 4 },
                { item_id = 8831, qty = 4 },
            },
            levels = { 250, 255, 255, 255 },
        },
        {
            spell_id = 1252321,
            name = "Sentinel's Waistguard",
            categories = { "Plate Belts" },
            icon = "inv_belt_37a",
            source = {
                {
                    type = "Vendor",
                    item_id = 251424,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250572, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 7966, qty = 4 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 6 },
                { item_id = 8831, qty = 10 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 1252363,
            name = "Thorium Cestus",
            categories = { "Fist Weapons" },
            icon = "inv_gauntlets_11",
            source = {
                {
                    type = "Vendor",
                    item_id = 251466,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250614, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 251291, qty = 8 },
                { item_id = 7082, qty = 4 },
                { item_id = 249726, qty = 10 },
                { item_id = 12644, qty = 1 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 1252362,
            name = "Thorium Greatmace",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_10",
            source = {
                {
                    type = "Vendor",
                    item_id = 251465,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250613, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 251291, qty = 4 },
                { item_id = 7076, qty = 4 },
                { item_id = 249726, qty = 10 },
                { item_id = 12644, qty = 2 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 16651,
            name = "Thorium Shield Spike",
            categories = { "Miscellaneous" },
            icon = "inv_misc_armorkit_20",
            source = {
                {
                    type = "Item",
                    item_id = 12692,
                },
            },
            product = { item_id = 12645, qty = 1 },
            materials = {
                { item_id = 12359, qty = 4 },
                { item_id = 12644, qty = 4 },
                { item_id = 7076, qty = 2 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 1252302,
            name = "Warder's Gloves",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_50",
            source = {
                {
                    type = "Item",
                    item_id = 251405,
                },
            },
            product = { item_id = 250553, qty = 1 },
            materials = {
                { item_id = 12359, qty = 8 },
                { item_id = 7966, qty = 4 },
                { item_id = 7971, qty = 4 },
            },
            levels = { 250, 255, 255, 255 },
        },
        {
            spell_id = 1252322,
            name = "Warder's Waistguard",
            categories = { "Plate Belts" },
            icon = "inv_belt_29",
            source = {
                {
                    type = "Vendor",
                    item_id = 251425,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250573, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 7966, qty = 4 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 6 },
                { item_id = 7971, qty = 10 },
            },
            levels = { 250, 270, 280, 290 },
        },
    },
    [255] = {
        {
            spell_id = 16978,
            name = "Blazing Rapier",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_30",
            source = {
                {
                    type = "Item",
                    item_id = 12825,
                },
            },
            product = { item_id = 12777, qty = 1 },
            materials = {
                { item_id = 12655, qty = 10 },
                { item_id = 7078, qty = 4 },
                { item_id = 7077, qty = 4 },
                { item_id = 12800, qty = 2 },
                { item_id = 12644, qty = 2 },
            },
            levels = { 255, 280, 292, 305 },
        },
        {
            spell_id = 1252339,
            name = "Blessed Plate Bracers",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_19",
            source = {
                {
                    type = "Item",
                    item_id = 251442,
                },
            },
            product = { item_id = 250590, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 12361, qty = 1 },
            },
            levels = { 255, 275, 285, 295 },
        },
        {
            spell_id = 15295,
            name = "Dark Iron Shoulders",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_09",
            source = {
                {
                    type = "Item",
                    item_id = 11615,
                },
            },
            product = { item_id = 11605, qty = 1 },
            materials = {
                { item_id = 11371, qty = 6 },
                { item_id = 7077, qty = 1 },
            },
            levels = { 255, 275, 285, 295 },
        },
        {
            spell_id = 16973,
            name = "Enchanted Battlehammer",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_05",
            source = {
                {
                    type = "Item",
                    item_id = 12824,
                },
            },
            product = { item_id = 12776, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12655, qty = 6 },
                { item_id = 12364, qty = 2 },
                { item_id = 12804, qty = 4 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 255, 280, 292, 305 },
        },
        {
            spell_id = 16971,
            name = "Huge Thorium Battleaxe",
            categories = { "Two-Handed Axes" },
            icon = "inv_weapon_halberd_11",
            source = {
                {
                    type = "Item",
                    item_id = 12823,
                },
            },
            product = { item_id = 12775, qty = 1 },
            materials = {
                { item_id = 12359, qty = 40 },
                { item_id = 12644, qty = 6 },
                { item_id = 8170, qty = 6 },
            },
            levels = { 255, 280, 292, 305 },
        },
        {
            spell_id = 1252338,
            name = "Imperial Plate Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_30",
            source = {
                {
                    type = "Item",
                    item_id = 251441,
                },
            },
            product = { item_id = 250589, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 7910, qty = 1 },
            },
            levels = { 255, 275, 285, 295 },
        },
        {
            spell_id = 16652,
            name = "Thorium Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_08",
            source = {
                {
                    type = "Item",
                    item_id = 12693,
                },
            },
            product = { item_id = 12409, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 8170, qty = 8 },
                { item_id = 11185, qty = 4 },
            },
            levels = { 255, 275, 285, 295 },
        },
        {
            spell_id = 16653,
            name = "Thorium Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_23",
            source = {
                {
                    type = "Item",
                    item_id = 12694,
                },
            },
            product = { item_id = 12410, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 7910, qty = 1 },
                { item_id = 11188, qty = 4 },
            },
            levels = { 255, 275, 285, 295 },
        },
    },
    [260] = {
        {
            spell_id = 15296,
            name = "Dark Iron Plate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate08",
            source = {
                {
                    type = "Item",
                    item_id = 11612,
                },
            },
            product = { item_id = 11604, qty = 1 },
            materials = {
                { item_id = 11371, qty = 20 },
                { item_id = 7077, qty = 8 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 16667,
            name = "Demon Forged Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate06",
            source = {
                {
                    type = "Item",
                    item_id = 12696,
                },
            },
            product = { item_id = 12628, qty = 1 },
            materials = {
                { item_id = 12359, qty = 40 },
                { item_id = 12662, qty = 10 },
                { item_id = 12361, qty = 4 },
                { item_id = 7910, qty = 4 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 16654,
            name = "Radiant Gloves",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_26",
            source = {
                {
                    type = "Item",
                    item_id = 12695,
                },
            },
            product = { item_id = 12418, qty = 1 },
            materials = {
                { item_id = 12359, qty = 18 },
                { item_id = 7077, qty = 4 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 16983,
            name = "Serenity",
            categories = { "One-Handed Maces" },
            icon = "inv_mace_02",
            source = {
                {
                    type = "Item",
                    item_id = 12827,
                },
            },
            product = { item_id = 12781, qty = 1 },
            materials = {
                { item_id = 12655, qty = 6 },
                { item_id = 12360, qty = 2 },
                { item_id = 12804, qty = 4 },
                { item_id = 12799, qty = 2 },
                { item_id = 12361, qty = 2 },
                { item_id = 12364, qty = 1 },
            },
            levels = { 260, 285, 297, 310 },
        },
        {
            spell_id = 1252364,
            name = "Thorium Poleaxe",
            categories = { "Polearms" },
            icon = "inv_spear_05",
            source = {
                {
                    type = "Item",
                    item_id = 251467,
                },
            },
            product = { item_id = 250615, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 251291, qty = 6 },
                { item_id = 249726, qty = 10 },
                { item_id = 12803, qty = 4 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 260, 280, 292, 305 },
        },
    },
    [265] = {
        {
            spell_id = 16985,
            name = "Corruption",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_07",
            source = {
                {
                    type = "Item",
                    item_id = 12830,
                },
            },
            product = { item_id = 12782, qty = 1 },
            materials = {
                { item_id = 12359, qty = 40 },
                { item_id = 12360, qty = 2 },
                { item_id = 12662, qty = 16 },
                { item_id = 12808, qty = 8 },
                { item_id = 12361, qty = 2 },
                { item_id = 12644, qty = 2 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 265, 290, 302, 315 },
        },
        {
            spell_id = 16660,
            name = "Dawnbringer Shoulders",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_20",
            source = {
                {
                    type = "Item",
                    item_id = 12698,
                },
            },
            product = { item_id = 12625, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12360, qty = 4 },
                { item_id = 12364, qty = 2 },
                { item_id = 7080, qty = 2 },
            },
            levels = { 265, 285, 295, 305 },
        },
        {
            spell_id = 16655,
            name = "Fiery Plate Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_03",
            source = {
                {
                    type = "Item",
                    item_id = 12699,
                },
            },
            product = { item_id = 12631, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12655, qty = 6 },
                { item_id = 7078, qty = 2 },
                { item_id = 7910, qty = 4 },
            },
            levels = { 265, 285, 295, 305 },
        },
        {
            spell_id = 23632,
            name = "Girdle of the Dawn",
            categories = { "Plate Belts" },
            icon = "inv_belt_11",
            source = {
                {
                    type = "Item",
                    item_id = 19203,
                },
            },
            product = { item_id = 19051, qty = 1 },
            materials = {
                { item_id = 12359, qty = 8 },
                { item_id = 6037, qty = 6 },
                { item_id = 12811, qty = 1 },
            },
            levels = { 265, 285, 295, 305 },
        },
        {
            spell_id = 16656,
            name = "Radiant Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_03",
            source = {
                {
                    type = "Item",
                    item_id = 12697,
                },
            },
            product = { item_id = 12419, qty = 1 },
            materials = {
                { item_id = 12359, qty = 14 },
                { item_id = 7077, qty = 4 },
            },
            levels = { 265, 285, 295, 305 },
        },
        {
            spell_id = 16984,
            name = "Volcanic Hammer",
            categories = { "One-Handed Maces" },
            icon = "inv_hammer_06",
            source = {
                {
                    type = "Item",
                    item_id = 12828,
                },
            },
            product = { item_id = 12792, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 7077, qty = 4 },
                { item_id = 7910, qty = 4 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 265, 290, 302, 315 },
        },
    },
    [270] = {
        {
            spell_id = 1317964,
            name = "Arcanite Blacksmith Hammer",
            categories = { "Thrown" },
            icon = "inv_hammer_20",
            source = {
                {
                    type = "Item",
                    item_id = 285291,
                },
            },
            product = { item_id = 285281, qty = 1 },
            materials = {
                { item_id = 11371, qty = 4 },
                { item_id = 12360, qty = 1 },
                { item_id = 12361, qty = 1 },
            },
            levels = { 270, 275, 277, 280 },
        },
        {
            spell_id = 1252341,
            name = "Blessed Plate Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_11",
            source = {
                {
                    type = "Item",
                    item_id = 251444,
                },
            },
            product = { item_id = 250592, qty = 1 },
            materials = {
                { item_id = 12359, qty = 18 },
                { item_id = 12361, qty = 1 },
                { item_id = 7071, qty = 1 },
                { item_id = 8170, qty = 6 },
            },
            levels = { 270, 290, 300, 310 },
        },
        {
            spell_id = 1252340,
            name = "Blessed Plate Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pants_plate_04",
            source = {
                {
                    type = "Item",
                    item_id = 251443,
                },
            },
            product = { item_id = 250591, qty = 1 },
            materials = {
                { item_id = 12359, qty = 40 },
                { item_id = 12361, qty = 2 },
            },
            levels = { 270, 290, 300, 310 },
        },
        {
            spell_id = 1252365,
            name = "Bold Dirk",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_01",
            source = {
                {
                    type = "Item",
                    item_id = 251468,
                },
            },
            product = { item_id = 250616, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 7082, qty = 4 },
                { item_id = 249726, qty = 10 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 270, 290, 300, 310 },
        },
        {
            spell_id = 20874,
            name = "Dark Iron Bracers",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_07",
            source = {
                {
                    type = "Item",
                    item_id = 17051,
                },
            },
            product = { item_id = 17014, qty = 1 },
            materials = {
                { item_id = 11371, qty = 4 },
                { item_id = 17010, qty = 2 },
                { item_id = 17011, qty = 2 },
            },
            levels = { 270, 290, 300, 310 },
        },
        {
            spell_id = 20872,
            name = "Fiery Chain Girdle",
            categories = { "Mail Belts" },
            icon = "inv_belt_13",
            source = {
                {
                    type = "Item",
                    item_id = 17049,
                },
            },
            product = { item_id = 16989, qty = 1 },
            materials = {
                { item_id = 11371, qty = 6 },
                { item_id = 17010, qty = 3 },
                { item_id = 17011, qty = 3 },
            },
            levels = { 270, 290, 300, 310 },
        },
        {
            spell_id = 16657,
            name = "Imperial Plate Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_01",
            source = {
                {
                    type = "Item",
                    item_id = 12700,
                },
            },
            product = { item_id = 12426, qty = 1 },
            materials = {
                { item_id = 12359, qty = 34 },
                { item_id = 7910, qty = 1 },
                { item_id = 7909, qty = 1 },
            },
            levels = { 270, 290, 300, 310 },
        },
        {
            spell_id = 16658,
            name = "Imperial Plate Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_22",
            source = {
                {
                    type = "Item",
                    item_id = 12701,
                },
            },
            product = { item_id = 12427, qty = 1 },
            materials = {
                { item_id = 12359, qty = 34 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 270, 290, 300, 310 },
        },
        {
            spell_id = 16659,
            name = "Radiant Circlet",
            categories = { "Mail Helmets" },
            icon = "inv_crown_01",
            source = {
                {
                    type = "Item",
                    item_id = 12702,
                },
            },
            product = { item_id = 12417, qty = 1 },
            materials = {
                { item_id = 12359, qty = 18 },
                { item_id = 7077, qty = 4 },
            },
            levels = { 270, 290, 300, 310 },
        },
    },
    [275] = {
        {
            spell_id = 1252342,
            name = "Blessed Plate Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_24",
            source = {
                {
                    type = "Item",
                    item_id = 251445,
                },
            },
            product = { item_id = 250593, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 12361, qty = 2 },
            },
            levels = { 275, 295, 305, 315 },
        },
        {
            spell_id = 16663,
            name = "Imperial Plate Chest",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate10",
            source = {
                {
                    type = "Item",
                    item_id = 12705,
                },
            },
            product = { item_id = 12422, qty = 1 },
            materials = {
                { item_id = 12359, qty = 40 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 275, 295, 305, 315 },
        },
        {
            spell_id = 16665,
            name = "Runic Plate Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_01",
            source = {
                {
                    type = "Item",
                    item_id = 12707,
                },
            },
            product = { item_id = 12611, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12360, qty = 2 },
                { item_id = 2842, qty = 10 },
            },
            levels = { 275, 295, 305, 315 },
        },
        {
            spell_id = 16664,
            name = "Runic Plate Shoulders",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_23",
            source = {
                {
                    type = "Item",
                    item_id = 12706,
                },
            },
            product = { item_id = 12610, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12360, qty = 2 },
                { item_id = 3577, qty = 6 },
            },
            levels = { 275, 295, 305, 315 },
        },
        {
            spell_id = 16662,
            name = "Thorium Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 12704,
                },
            },
            product = { item_id = 12414, qty = 1 },
            materials = {
                { item_id = 12359, qty = 26 },
                { item_id = 11186, qty = 4 },
            },
            levels = { 275, 295, 305, 315 },
        },
    },
    [280] = {
        {
            spell_id = 1252343,
            name = "Blessed Plate Chest",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate03",
            source = {
                {
                    type = "Item",
                    item_id = 251446,
                },
            },
            product = { item_id = 250594, qty = 1 },
            materials = {
                { item_id = 12359, qty = 36 },
                { item_id = 12361, qty = 2 },
            },
            levels = { 280, 300, 310, 320 },
        },
        {
            spell_id = 16730,
            name = "Imperial Plate Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 12715,
                },
            },
            product = { item_id = 12429, qty = 1 },
            materials = {
                { item_id = 12359, qty = 44 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 280, 300, 310, 320 },
        },
        {
            spell_id = 16725,
            name = "Radiant Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_03",
            source = {
                {
                    type = "Item",
                    item_id = 12713,
                },
            },
            product = { item_id = 12420, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 7077, qty = 4 },
            },
            levels = { 280, 300, 310, 320 },
        },
        {
            spell_id = 16726,
            name = "Runic Plate Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_03",
            source = {
                {
                    type = "Item",
                    item_id = 12714,
                },
            },
            product = { item_id = 12612, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 12360, qty = 2 },
                { item_id = 6037, qty = 2 },
                { item_id = 12364, qty = 1 },
            },
            levels = { 280, 300, 310, 320 },
        },
    },
    [285] = {
        {
            spell_id = 1297141,
            name = "Clutchlord's Grips",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_29",
            source = {
                {
                    type = "Item",
                    item_id = 275601,
                },
            },
            product = { item_id = 275625, qty = 1 },
            materials = {
                { item_id = 12359, qty = 7 },
                { item_id = 12655, qty = 5 },
                { item_id = 7076, qty = 3 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 285, 290, 292, 295 },
        },
        {
            spell_id = 1297138,
            name = "Goregasher Grips",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_31",
            source = {
                {
                    type = "Item",
                    item_id = 275598,
                },
            },
            product = { item_id = 275622, qty = 1 },
            materials = {
                { item_id = 12359, qty = 7 },
                { item_id = 12655, qty = 5 },
                { item_id = 7078, qty = 3 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 285, 290, 292, 295 },
        },
        {
            spell_id = 16731,
            name = "Runic Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate11",
            source = {
                {
                    type = "Item",
                    item_id = 12718,
                },
            },
            product = { item_id = 12613, qty = 1 },
            materials = {
                { item_id = 12359, qty = 40 },
                { item_id = 12360, qty = 2 },
                { item_id = 7910, qty = 1 },
            },
            levels = { 285, 305, 315, 325 },
        },
        {
            spell_id = 16732,
            name = "Runic Plate Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 12719,
                },
            },
            product = { item_id = 12614, qty = 1 },
            materials = {
                { item_id = 12359, qty = 40 },
                { item_id = 12360, qty = 2 },
                { item_id = 7910, qty = 1 },
            },
            levels = { 285, 305, 315, 325 },
        },
    },
    [290] = {
        {
            spell_id = 1297142,
            name = "Clutchlord's Support",
            categories = { "Plate Belts" },
            icon = "inv_belt_34",
            source = {
                {
                    type = "Item",
                    item_id = 275602,
                },
            },
            product = { item_id = 275626, qty = 1 },
            materials = {
                { item_id = 12359, qty = 11 },
                { item_id = 12655, qty = 5 },
                { item_id = 7076, qty = 3 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 290, 295, 297, 300 },
        },
        {
            spell_id = 1297139,
            name = "Goregasher Support",
            categories = { "Plate Belts" },
            icon = "inv_belt_33",
            source = {
                {
                    type = "Item",
                    item_id = 275599,
                },
            },
            product = { item_id = 275623, qty = 1 },
            materials = {
                { item_id = 12359, qty = 11 },
                { item_id = 12655, qty = 5 },
                { item_id = 7078, qty = 3 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 290, 295, 297, 300 },
        },
        {
            spell_id = 16724,
            name = "Whitesoul Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_13",
            source = {
                {
                    type = "Item",
                    item_id = 12711,
                },
            },
            product = { item_id = 12633, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 12655, qty = 4 },
                { item_id = 6037, qty = 6 },
                { item_id = 3577, qty = 6 },
                { item_id = 12800, qty = 2 },
            },
            levels = { 290, 310, 320, 330 },
        },
    },
    [295] = {
        {
            spell_id = 1297143,
            name = "Clutchlord's Stompers",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_07",
            source = {
                {
                    type = "Item",
                    item_id = 275603,
                },
            },
            product = { item_id = 275627, qty = 1 },
            materials = {
                { item_id = 12359, qty = 9 },
                { item_id = 12655, qty = 5 },
                { item_id = 7076, qty = 3 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 295, 295, 297, 300 },
        },
        {
            spell_id = 1297140,
            name = "Goregasher Stompers",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_08",
            source = {
                {
                    type = "Item",
                    item_id = 275600,
                },
            },
            product = { item_id = 275624, qty = 1 },
            materials = {
                { item_id = 12359, qty = 9 },
                { item_id = 12655, qty = 5 },
                { item_id = 7078, qty = 3 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 295, 295, 297, 300 },
        },
    },
    [300] = {
        {
            spell_id = 16991,
            name = "Annihilator",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_12",
            source = {
                {
                    type = "Item",
                    item_id = 12835,
                },
            },
            product = { item_id = 12798, qty = 1 },
            materials = {
                { item_id = 12359, qty = 40 },
                { item_id = 12360, qty = 12 },
                { item_id = 12808, qty = 10 },
                { item_id = 12364, qty = 8 },
                { item_id = 12644, qty = 2 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 300, 295, 305, 315 },
        },
        {
            spell_id = 16990,
            name = "Arcanite Champion",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_39",
            source = {
                {
                    type = "Item",
                    item_id = 12834,
                },
            },
            product = { item_id = 12790, qty = 1 },
            materials = {
                { item_id = 12360, qty = 15 },
                { item_id = 12800, qty = 8 },
                { item_id = 12811, qty = 1 },
                { item_id = 12799, qty = 4 },
                { item_id = 12810, qty = 8 },
                { item_id = 12644, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 16994,
            name = "Arcanite Reaper",
            categories = { "Two-Handed Axes" },
            icon = "inv_axe_09",
            source = {
                {
                    type = "Item",
                    item_id = 12838,
                },
            },
            product = { item_id = 12784, qty = 1 },
            materials = {
                { item_id = 12360, qty = 20 },
                { item_id = 12810, qty = 6 },
                { item_id = 12644, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1306539,
            name = "Azerothium Legplates",
            categories = { "Plate Legguards" },
            icon = "inv_pants_plate_15",
            source = {
                {
                    type = "Item",
                    item_id = 279314,
                },
            },
            product = { item_id = 279265, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 251290, qty = 1 },
                { item_id = 251291, qty = 18 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 1252367,
            name = "Bagh Nakh",
            categories = { "Fist Weapons" },
            icon = "inv_misc_monsterclaw_03",
            source = {
                {
                    type = "Item",
                    item_id = 251470,
                },
            },
            product = { item_id = 250618, qty = 1 },
            materials = {
                { item_id = 251290, qty = 10 },
                { item_id = 251291, qty = 10 },
                { item_id = 249726, qty = 10 },
                { item_id = 7910, qty = 4 },
                { item_id = 12361, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 23638,
            name = "Black Amnesty",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_12",
            source = {
                {
                    type = "Item",
                    item_id = 19208,
                },
            },
            product = { item_id = 19166, qty = 1 },
            materials = {
                { item_id = 17011, qty = 3 },
                { item_id = 17010, qty = 6 },
                { item_id = 12360, qty = 12 },
                { item_id = 11382, qty = 1 },
                { item_id = 11371, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 27589,
            name = "Black Grasp of the Destroyer",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_31",
            source = {
                {
                    type = "Item",
                    item_id = 22220,
                },
            },
            product = { item_id = 22194, qty = 1 },
            materials = {
                { item_id = 22203, qty = 8 },
                { item_id = 22202, qty = 24 },
                { item_id = 12810, qty = 8 },
                { item_id = 13512, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 23639,
            name = "Blackfury",
            categories = { "Polearms" },
            icon = "inv_spear_08",
            source = {
                {
                    type = "Item",
                    item_id = 19209,
                },
            },
            product = { item_id = 19167, qty = 1 },
            materials = {
                { item_id = 17011, qty = 5 },
                { item_id = 17010, qty = 2 },
                { item_id = 12360, qty = 16 },
                { item_id = 11371, qty = 6 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 23652,
            name = "Blackguard",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_39",
            source = {
                {
                    type = "Item",
                    item_id = 19211,
                },
            },
            product = { item_id = 19168, qty = 1 },
            materials = {
                { item_id = 17011, qty = 6 },
                { item_id = 17010, qty = 6 },
                { item_id = 12360, qty = 10 },
                { item_id = 11371, qty = 6 },
                { item_id = 12809, qty = 12 },
            },
            levels = { 300, 295, 305, 315 },
        },
        {
            spell_id = 24136,
            name = "Bloodsoul Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_14",
            source = {
                {
                    type = "Item",
                    item_id = 19776,
                },
            },
            product = { item_id = 19690, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 19774, qty = 10 },
                { item_id = 19726, qty = 2 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24138,
            name = "Bloodsoul Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_31",
            source = {
                {
                    type = "Item",
                    item_id = 19778,
                },
            },
            product = { item_id = 19692, qty = 1 },
            materials = {
                { item_id = 12359, qty = 12 },
                { item_id = 19774, qty = 6 },
                { item_id = 19726, qty = 2 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24137,
            name = "Bloodsoul Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_15",
            source = {
                {
                    type = "Item",
                    item_id = 19777,
                },
            },
            product = { item_id = 19691, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 19774, qty = 8 },
                { item_id = 19726, qty = 2 },
                { item_id = 7910, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1252350,
            name = "Breastplate of Salvation",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate09",
            source = {
                {
                    type = "Item",
                    item_id = 251453,
                },
            },
            product = { item_id = 250601, qty = 1 },
            materials = {
                { item_id = 251290, qty = 12 },
                { item_id = 12359, qty = 80 },
                { item_id = 12361, qty = 10 },
                { item_id = 12800, qty = 4 },
                { item_id = 12662, qty = 20 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1252347,
            name = "Champion's Legplates",
            categories = { "Plate Legguards" },
            icon = "inv_pants_plate_02",
            source = {
                {
                    type = "Item",
                    item_id = 251450,
                },
            },
            product = { item_id = 250598, qty = 1 },
            materials = {
                { item_id = 251290, qty = 12 },
                { item_id = 251291, qty = 20 },
                { item_id = 7082, qty = 10 },
                { item_id = 13512, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24399,
            name = "Dark Iron Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_chain_08",
            source = {
                {
                    type = "Item",
                    item_id = 20040,
                },
            },
            product = { item_id = 20039, qty = 1 },
            materials = {
                { item_id = 17011, qty = 3 },
                { item_id = 17010, qty = 3 },
                { item_id = 17012, qty = 4 },
                { item_id = 11371, qty = 6 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 20897,
            name = "Dark Iron Destroyer",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_12",
            source = {
                {
                    type = "Item",
                    item_id = 17060,
                },
            },
            product = { item_id = 17016, qty = 1 },
            materials = {
                { item_id = 11371, qty = 18 },
                { item_id = 17011, qty = 12 },
                { item_id = 11382, qty = 2 },
                { item_id = 12810, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 23637,
            name = "Dark Iron Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_22",
            source = {
                {
                    type = "Item",
                    item_id = 19207,
                },
            },
            product = { item_id = 19164, qty = 1 },
            materials = {
                { item_id = 17011, qty = 3 },
                { item_id = 17010, qty = 5 },
                { item_id = 17012, qty = 4 },
                { item_id = 11371, qty = 4 },
                { item_id = 11382, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 23636,
            name = "Dark Iron Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_22",
            source = {
                {
                    type = "Item",
                    item_id = 19206,
                },
            },
            product = { item_id = 19148, qty = 1 },
            materials = {
                { item_id = 17011, qty = 4 },
                { item_id = 17010, qty = 2 },
                { item_id = 11371, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 20876,
            name = "Dark Iron Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 17052,
                },
            },
            product = { item_id = 17013, qty = 1 },
            materials = {
                { item_id = 11371, qty = 16 },
                { item_id = 17010, qty = 4 },
                { item_id = 17011, qty = 6 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 20890,
            name = "Dark Iron Reaver",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_48",
            source = {
                {
                    type = "Item",
                    item_id = 17059,
                },
            },
            product = { item_id = 17015, qty = 1 },
            materials = {
                { item_id = 11371, qty = 16 },
                { item_id = 17010, qty = 12 },
                { item_id = 11382, qty = 2 },
                { item_id = 12810, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24914,
            name = "Darkrune Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate06",
            source = {
                {
                    type = "Item",
                    item_id = 20554,
                },
            },
            product = { item_id = 20550, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 20520, qty = 10 },
                { item_id = 6037, qty = 10 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24912,
            name = "Darkrune Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_27",
            source = {
                {
                    type = "Item",
                    item_id = 20553,
                },
            },
            product = { item_id = 20549, qty = 1 },
            materials = {
                { item_id = 12359, qty = 12 },
                { item_id = 20520, qty = 6 },
                { item_id = 6037, qty = 6 },
                { item_id = 12810, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24913,
            name = "Darkrune Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_10",
            source = {
                {
                    type = "Item",
                    item_id = 20555,
                },
            },
            product = { item_id = 20551, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 20520, qty = 8 },
                { item_id = 6037, qty = 8 },
                { item_id = 11754, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24139,
            name = "Darksoul Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate08",
            source = {
                {
                    type = "Item",
                    item_id = 19779,
                },
            },
            product = { item_id = 19693, qty = 1 },
            materials = {
                { item_id = 12359, qty = 20 },
                { item_id = 19774, qty = 14 },
                { item_id = 12799, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24140,
            name = "Darksoul Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pants_plate_21",
            source = {
                {
                    type = "Item",
                    item_id = 19780,
                },
            },
            product = { item_id = 19694, qty = 1 },
            materials = {
                { item_id = 12359, qty = 18 },
                { item_id = 19774, qty = 12 },
                { item_id = 12799, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24141,
            name = "Darksoul Shoulders",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_01",
            source = {
                {
                    type = "Item",
                    item_id = 19781,
                },
            },
            product = { item_id = 19695, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 19774, qty = 10 },
                { item_id = 12799, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1306537,
            name = "Depleted Thorium Sabatons",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_02",
            source = {
                {
                    type = "Item",
                    item_id = 279312,
                },
            },
            product = { item_id = 279263, qty = 1 },
            materials = {
                { item_id = 274030, qty = 2 },
                { item_id = 251290, qty = 1 },
                { item_id = 251291, qty = 12 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 23650,
            name = "Ebon Hand",
            categories = { "One-Handed Maces" },
            icon = "inv_hammer_19",
            source = {
                {
                    type = "Item",
                    item_id = 19210,
                },
            },
            product = { item_id = 19170, qty = 1 },
            materials = {
                { item_id = 17011, qty = 4 },
                { item_id = 17010, qty = 7 },
                { item_id = 12360, qty = 12 },
                { item_id = 11371, qty = 8 },
                { item_id = 12800, qty = 4 },
            },
            levels = { 300, 295, 305, 315 },
        },
        {
            spell_id = 22757,
            name = "Elemental Sharpening Stone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_02",
            source = {
                {
                    type = "Item",
                    item_id = 18264,
                },
            },
            product = { item_id = 18262, qty = 1 },
            materials = {
                { item_id = 7067, qty = 2 },
                { item_id = 12365, qty = 3 },
            },
            levels = { 300, 275, 285, 295 },
        },
        {
            spell_id = 16745,
            name = "Enchanted Thorium Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate10",
            source = {
                {
                    type = "Item",
                    item_id = 12727,
                },
            },
            product = { item_id = 12618, qty = 1 },
            materials = {
                { item_id = 12360, qty = 8 },
                { item_id = 12655, qty = 24 },
                { item_id = 7076, qty = 4 },
                { item_id = 7080, qty = 4 },
                { item_id = 12364, qty = 2 },
                { item_id = 12800, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 16742,
            name = "Enchanted Thorium Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_02",
            source = {
                {
                    type = "Item",
                    item_id = 12725,
                },
            },
            product = { item_id = 12620, qty = 1 },
            materials = {
                { item_id = 12360, qty = 6 },
                { item_id = 12655, qty = 16 },
                { item_id = 7076, qty = 6 },
                { item_id = 12799, qty = 2 },
                { item_id = 12800, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 16744,
            name = "Enchanted Thorium Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 12726,
                },
            },
            product = { item_id = 12619, qty = 1 },
            materials = {
                { item_id = 12360, qty = 10 },
                { item_id = 12655, qty = 20 },
                { item_id = 7080, qty = 6 },
                { item_id = 12361, qty = 2 },
                { item_id = 12364, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1252344,
            name = "Enriched Thorium Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate11",
            source = {
                {
                    type = "Vendor",
                    item_id = 251447,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250595, qty = 1 },
            materials = {
                { item_id = 251290, qty = 8 },
                { item_id = 251291, qty = 24 },
                { item_id = 7082, qty = 4 },
                { item_id = 7078, qty = 4 },
                { item_id = 249726, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1252346,
            name = "Enriched Thorium Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_10",
            source = {
                {
                    type = "Vendor",
                    item_id = 251449,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250597, qty = 1 },
            materials = {
                { item_id = 251290, qty = 6 },
                { item_id = 251291, qty = 16 },
                { item_id = 7078, qty = 6 },
                { item_id = 249726, qty = 3 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1252345,
            name = "Enriched Thorium Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_plate_10",
            source = {
                {
                    type = "Vendor",
                    item_id = 251448,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250596, qty = 1 },
            materials = {
                { item_id = 251290, qty = 10 },
                { item_id = 251291, qty = 20 },
                { item_id = 7082, qty = 6 },
                { item_id = 249726, qty = 3 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1306536,
            name = "Evergreen Shield",
            categories = { "Shields" },
            icon = "inv_shield_1h_raidhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 279311,
                },
            },
            product = { item_id = 279262, qty = 1 },
            materials = {
                { item_id = 274030, qty = 2 },
                { item_id = 251290, qty = 1 },
                { item_id = 251291, qty = 10 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 20873,
            name = "Fiery Chain Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_23",
            source = {
                {
                    type = "Item",
                    item_id = 17053,
                },
            },
            product = { item_id = 16988, qty = 1 },
            materials = {
                { item_id = 11371, qty = 16 },
                { item_id = 17010, qty = 4 },
                { item_id = 17011, qty = 5 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1306534,
            name = "Forest Defender's Axe",
            categories = { "Two-Handed Axes" },
            icon = "inv_axe_2h_raidhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 279309,
                },
            },
            product = { item_id = 279260, qty = 1 },
            materials = {
                { item_id = 274030, qty = 4 },
                { item_id = 251290, qty = 1 },
                { item_id = 251291, qty = 20 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 16992,
            name = "Frostguard",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_11",
            source = {
                {
                    type = "Item",
                    item_id = 12836,
                },
            },
            product = { item_id = 12797, qty = 1 },
            materials = {
                { item_id = 12360, qty = 18 },
                { item_id = 12361, qty = 8 },
                { item_id = 12800, qty = 8 },
                { item_id = 7080, qty = 4 },
                { item_id = 12644, qty = 2 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1292982,
            name = "Gauntlets of Glory",
            categories = { "Plate Gauntlets" },
            icon = "inv_glove_plate_raidwarriorhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 274013,
                },
            },
            product = { item_id = 273945, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 23633,
            name = "Gloves of the Dawn",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_29",
            source = {
                {
                    type = "Item",
                    item_id = 19205,
                },
            },
            product = { item_id = 19057, qty = 1 },
            materials = {
                { item_id = 12360, qty = 2 },
                { item_id = 6037, qty = 10 },
                { item_id = 12811, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1292984,
            name = "Greaves of Glory",
            categories = { "Plate Boots" },
            icon = "inv_boot_plate_raidwarriorhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 274015,
                },
            },
            product = { item_id = 273947, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1306535,
            name = "Greenhammer",
            categories = { "One-Handed Maces" },
            icon = "inv_mace_1h_raidhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 279310,
                },
            },
            product = { item_id = 279261, qty = 1 },
            materials = {
                { item_id = 274030, qty = 2 },
                { item_id = 251290, qty = 1 },
                { item_id = 251291, qty = 16 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 16988,
            name = "Hammer of the Titans",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_09",
            source = {
                {
                    type = "Item",
                    item_id = 12833,
                },
            },
            product = { item_id = 12796, qty = 1 },
            materials = {
                { item_id = 12359, qty = 50 },
                { item_id = 12360, qty = 15 },
                { item_id = 12809, qty = 4 },
                { item_id = 12810, qty = 6 },
                { item_id = 7076, qty = 10 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1292986,
            name = "Handguards of Glory",
            categories = { "Plate Gauntlets" },
            icon = "inv_glove_plate_raidwarriorhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 274017,
                },
            },
            product = { item_id = 273949, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 16995,
            name = "Heartseeker",
            categories = { "Daggers" },
            icon = "inv_sword_17",
            source = {
                {
                    type = "Item",
                    item_id = 12839,
                },
            },
            product = { item_id = 12783, qty = 1 },
            materials = {
                { item_id = 12360, qty = 10 },
                { item_id = 12655, qty = 10 },
                { item_id = 12810, qty = 2 },
                { item_id = 7910, qty = 6 },
                { item_id = 12800, qty = 6 },
                { item_id = 12799, qty = 6 },
                { item_id = 12644, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 27585,
            name = "Heavy Obsidian Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_16",
            product = { item_id = 22197, qty = 1 },
            materials = {
                { item_id = 22202, qty = 14 },
                { item_id = 12655, qty = 4 },
                { item_id = 7076, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1306538,
            name = "Heavy Thorium Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_28",
            source = {
                {
                    type = "Item",
                    item_id = 279313,
                },
            },
            product = { item_id = 279264, qty = 1 },
            materials = {
                { item_id = 274030, qty = 2 },
                { item_id = 251290, qty = 1 },
                { item_id = 251291, qty = 14 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 28244,
            name = "Icebane Bracers",
            categories = { "Plate Bracers" },
            icon = "inv_bracer_07",
            source = {
                {
                    type = "Item",
                    item_id = 22705,
                },
            },
            product = { item_id = 22671, qty = 1 },
            materials = {
                { item_id = 22682, qty = 4 },
                { item_id = 12359, qty = 12 },
                { item_id = 12360, qty = 2 },
                { item_id = 7080, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 28242,
            name = "Icebane Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_chain_11",
            source = {
                {
                    type = "Item",
                    item_id = 22703,
                },
            },
            product = { item_id = 22669, qty = 1 },
            materials = {
                { item_id = 22682, qty = 7 },
                { item_id = 12359, qty = 16 },
                { item_id = 12360, qty = 2 },
                { item_id = 7080, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 28243,
            name = "Icebane Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_28",
            source = {
                {
                    type = "Item",
                    item_id = 22704,
                },
            },
            product = { item_id = 22670, qty = 1 },
            materials = {
                { item_id = 22682, qty = 5 },
                { item_id = 12359, qty = 12 },
                { item_id = 12360, qty = 2 },
                { item_id = 7080, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 28463,
            name = "Ironvine Belt",
            categories = { "Plate Belts" },
            icon = "inv_belt_21",
            product = { item_id = 22764, qty = 1 },
            materials = {
                { item_id = 12655, qty = 6 },
                { item_id = 12803, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 28461,
            name = "Ironvine Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate07",
            product = { item_id = 22762, qty = 1 },
            materials = {
                { item_id = 12655, qty = 12 },
                { item_id = 19726, qty = 2 },
                { item_id = 12360, qty = 2 },
                { item_id = 12803, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 28462,
            name = "Ironvine Gloves",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_29",
            product = { item_id = 22763, qty = 1 },
            materials = {
                { item_id = 12655, qty = 8 },
                { item_id = 19726, qty = 1 },
                { item_id = 12803, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1306533,
            name = "Ironwood Blade",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_07",
            source = {
                {
                    type = "Item",
                    item_id = 279308,
                },
            },
            product = { item_id = 279259, qty = 1 },
            materials = {
                { item_id = 274030, qty = 2 },
                { item_id = 251290, qty = 1 },
                { item_id = 251291, qty = 14 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 27586,
            name = "Jagged Obsidian Shield",
            categories = { "Shields" },
            icon = "inv_shield_22",
            source = {
                {
                    type = "Item",
                    item_id = 22219,
                },
            },
            product = { item_id = 22198, qty = 1 },
            materials = {
                { item_id = 22203, qty = 8 },
                { item_id = 22202, qty = 24 },
                { item_id = 12655, qty = 8 },
                { item_id = 7076, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1292951,
            name = "Justice Epaulets",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273982,
                },
            },
            product = { item_id = 273914, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292946,
            name = "Justice Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_glove_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273977,
                },
            },
            product = { item_id = 273909, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292950,
            name = "Justice Gloves",
            categories = { "Plate Gauntlets" },
            icon = "inv_glove_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273981,
                },
            },
            product = { item_id = 273913, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292948,
            name = "Justice Greaves",
            categories = { "Plate Boots" },
            icon = "inv_boot_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273979,
                },
            },
            product = { item_id = 273911, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292954,
            name = "Justice Handguards",
            categories = { "Plate Gauntlets" },
            icon = "inv_glove_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273985,
                },
            },
            product = { item_id = 273917, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292945,
            name = "Justice Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pant_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273976,
                },
            },
            product = { item_id = 273908, qty = 1 },
            materials = {
                { item_id = 274030, qty = 5 },
                { item_id = 12360, qty = 4 },
                { item_id = 251291, qty = 18 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292953,
            name = "Justice Legguards",
            categories = { "Plate Legguards" },
            icon = "inv_pant_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273984,
                },
            },
            product = { item_id = 273916, qty = 1 },
            materials = {
                { item_id = 274030, qty = 5 },
                { item_id = 12360, qty = 4 },
                { item_id = 251291, qty = 18 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292949,
            name = "Justice Legplates",
            categories = { "Plate Legguards" },
            icon = "inv_pant_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273980,
                },
            },
            product = { item_id = 273912, qty = 1 },
            materials = {
                { item_id = 274030, qty = 5 },
                { item_id = 12360, qty = 4 },
                { item_id = 251291, qty = 18 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292955,
            name = "Justice Pauldrons",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273986,
                },
            },
            product = { item_id = 273918, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292956,
            name = "Justice Sabatons",
            categories = { "Plate Boots" },
            icon = "inv_boot_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273987,
                },
            },
            product = { item_id = 273919, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292947,
            name = "Justice Spaulders",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273978,
                },
            },
            product = { item_id = 273910, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292952,
            name = "Justice Treads",
            categories = { "Plate Boots" },
            icon = "inv_boot_plate_raidpaladinhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 273983,
                },
            },
            product = { item_id = 273915, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1292985,
            name = "Legguards of Glory",
            categories = { "Plate Legguards" },
            icon = "inv_pant_plate_raidwarriorhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 274016,
                },
            },
            product = { item_id = 273948, qty = 1 },
            materials = {
                { item_id = 274030, qty = 5 },
                { item_id = 12360, qty = 4 },
                { item_id = 251291, qty = 18 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1252368,
            name = "Legionite Glaive",
            categories = { "Polearms" },
            icon = "inv_spear_05",
            source = {
                {
                    type = "Vendor",
                    item_id = 251471,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250619, qty = 1 },
            materials = {
                { item_id = 251290, qty = 15 },
                { item_id = 251291, qty = 8 },
                { item_id = 249726, qty = 10 },
                { item_id = 248820, qty = 4 },
                { item_id = 248822, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1292981,
            name = "Legplates of Glory",
            categories = { "Plate Legguards" },
            icon = "inv_pant_plate_raidwarriorhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 274012,
                },
            },
            product = { item_id = 273944, qty = 1 },
            materials = {
                { item_id = 274030, qty = 5 },
                { item_id = 12360, qty = 4 },
                { item_id = 251291, qty = 18 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 27588,
            name = "Light Obsidian Belt",
            categories = { "Mail Belts" },
            icon = "inv_belt_16",
            product = { item_id = 22195, qty = 1 },
            materials = {
                { item_id = 22202, qty = 14 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 16729,
            name = "Lionheart Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_36",
            source = {
                {
                    type = "Item",
                    item_id = 12717,
                },
            },
            product = { item_id = 12640, qty = 1 },
            materials = {
                { item_id = 12359, qty = 80 },
                { item_id = 12360, qty = 12 },
                { item_id = 8146, qty = 40 },
                { item_id = 12361, qty = 10 },
                { item_id = 12800, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1252349,
            name = "Martyr's Legplates",
            categories = { "Plate Legguards" },
            icon = "inv_pants_plate_21",
            source = {
                {
                    type = "Item",
                    item_id = 251452,
                },
            },
            product = { item_id = 250600, qty = 1 },
            materials = {
                { item_id = 251290, qty = 12 },
                { item_id = 251291, qty = 20 },
                { item_id = 7078, qty = 10 },
                { item_id = 13511, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1263073,
            name = "Master Forge",
            categories = { "Camping" },
            icon = "inv_mace_1h_blacksmithing_b_01_black",
            source = {
                {
                    type = "Item",
                    item_id = 273113,
                },
            },
            product = { item_id = 279955, qty = 1 },
            materials = {
                { item_id = 273127, qty = 1 },
                { item_id = 12359, qty = 5 },
                { item_id = 8170, qty = 2 },
            },
            levels = { 300, 300, 300, 300 },
        },
        {
            spell_id = 16993,
            name = "Masterwork Stormhammer",
            categories = { "One-Handed Maces" },
            icon = "inv_hammer_04",
            source = {
                {
                    type = "Item",
                    item_id = 12837,
                },
            },
            product = { item_id = 12794, qty = 1 },
            materials = {
                { item_id = 12655, qty = 20 },
                { item_id = 12364, qty = 8 },
                { item_id = 12799, qty = 8 },
                { item_id = 7076, qty = 6 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 23653,
            name = "Nightfall",
            categories = { "Two-Handed Axes" },
            icon = "inv_axe_12",
            source = {
                {
                    type = "Item",
                    item_id = 19212,
                },
            },
            product = { item_id = 19169, qty = 1 },
            materials = {
                { item_id = 17011, qty = 8 },
                { item_id = 17010, qty = 5 },
                { item_id = 12360, qty = 10 },
                { item_id = 11371, qty = 12 },
                { item_id = 12364, qty = 4 },
            },
            levels = { 300, 295, 305, 315 },
        },
        {
            spell_id = 27590,
            name = "Obsidian Mail Tunic",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_17",
            source = {
                {
                    type = "Item",
                    item_id = 22221,
                },
            },
            product = { item_id = 22191, qty = 1 },
            materials = {
                { item_id = 22203, qty = 15 },
                { item_id = 22202, qty = 36 },
                { item_id = 12810, qty = 12 },
                { item_id = 12809, qty = 10 },
                { item_id = 12800, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1292987,
            name = "Pauldrons of Glory",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_plate_raidwarriorhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 274018,
                },
            },
            product = { item_id = 273950, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 27830,
            name = "Persuader",
            categories = { "One-Handed Maces" },
            icon = "inv_hammer_08",
            source = {
                {
                    type = "Item",
                    item_id = 22390,
                },
            },
            product = { item_id = 22384, qty = 1 },
            materials = {
                { item_id = 12360, qty = 15 },
                { item_id = 11371, qty = 10 },
                { item_id = 12808, qty = 20 },
                { item_id = 20520, qty = 20 },
                { item_id = 15417, qty = 10 },
                { item_id = 12753, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1292988,
            name = "Sabatons of Glory",
            categories = { "Plate Boots" },
            icon = "inv_boot_plate_raidwarriorhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 274019,
                },
            },
            product = { item_id = 273951, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 27832,
            name = "Sageblade",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_51",
            source = {
                {
                    type = "Item",
                    item_id = 22389,
                },
            },
            product = { item_id = 22383, qty = 1 },
            materials = {
                { item_id = 12360, qty = 12 },
                { item_id = 20725, qty = 2 },
                { item_id = 13512, qty = 2 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1292983,
            name = "Shoulders of Glory",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_plate_raidwarriorhyjalc60_d_01",
            source = {
                {
                    type = "Item",
                    item_id = 274014,
                },
            },
            product = { item_id = 273946, qty = 1 },
            materials = {
                { item_id = 274030, qty = 3 },
                { item_id = 12360, qty = 2 },
                { item_id = 251291, qty = 12 },
                { item_id = 18567, qty = 1 },
            },
            levels = { 300, 320, 325, 330 },
        },
        {
            spell_id = 1252348,
            name = "Stalwart Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_22",
            source = {
                {
                    type = "Item",
                    item_id = 251451,
                },
            },
            product = { item_id = 250599, qty = 1 },
            materials = {
                { item_id = 251290, qty = 12 },
                { item_id = 12359, qty = 80 },
                { item_id = 7910, qty = 10 },
                { item_id = 12800, qty = 4 },
                { item_id = 7971, qty = 20 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1252366,
            name = "Stormcarver",
            categories = { "Two-Handed Axes" },
            icon = "inv_axe_04",
            source = {
                {
                    type = "Item",
                    item_id = 251469,
                },
            },
            product = { item_id = 250617, qty = 1 },
            materials = {
                { item_id = 251290, qty = 20 },
                { item_id = 249726, qty = 10 },
                { item_id = 12644, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 16741,
            name = "Stronghold Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_30",
            source = {
                {
                    type = "Item",
                    item_id = 12720,
                },
                {
                    type = "Item",
                    item_id = 228118,
                },
            },
            product = { item_id = 12639, qty = 1 },
            materials = {
                { item_id = 12360, qty = 15 },
                { item_id = 12655, qty = 20 },
                { item_id = 7076, qty = 10 },
                { item_id = 12361, qty = 4 },
                { item_id = 12799, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 21161,
            name = "Sulfuron Hammer",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_unique_sulfuras",
            source = {
                {
                    type = "Item",
                    item_id = 18592,
                },
            },
            product = { item_id = 17193, qty = 1 },
            materials = {
                { item_id = 17203, qty = 8 },
                { item_id = 11371, qty = 20 },
                { item_id = 12360, qty = 50 },
                { item_id = 7078, qty = 25 },
                { item_id = 11382, qty = 10 },
                { item_id = 17011, qty = 10 },
                { item_id = 17010, qty = 10 },
            },
            levels = { 300, 325, 337, 350 },
        },
        {
            spell_id = 27587,
            name = "Thick Obsidian Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_chain_17",
            source = {
                {
                    type = "Item",
                    item_id = 22222,
                },
            },
            product = { item_id = 22196, qty = 1 },
            materials = {
                { item_id = 22203, qty = 18 },
                { item_id = 22202, qty = 40 },
                { item_id = 12655, qty = 12 },
                { item_id = 7076, qty = 10 },
                { item_id = 12364, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 27829,
            name = "Titanic Leggings",
            categories = { "Plate Legguards" },
            icon = "inv_pants_04",
            source = {
                {
                    type = "Item",
                    item_id = 22388,
                },
            },
            product = { item_id = 22385, qty = 1 },
            materials = {
                { item_id = 12360, qty = 12 },
                { item_id = 12655, qty = 20 },
                { item_id = 7076, qty = 10 },
                { item_id = 13510, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
    },
    [980] = {
        {
            spell_id = 1252250,
            name = "Acolyte's Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_36",
            product = { item_id = 250501, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 3478, qty = 2 },
                { item_id = 10940, qty = 6 },
            },
            levels = { 0, 130, 130, 130 },
        },
        {
            spell_id = 1252245,
            name = "Acolyte's Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_17",
            product = { item_id = 250496, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 3478, qty = 2 },
                { item_id = 10940, qty = 4 },
            },
            levels = { 0, 100, 100, 100 },
        },
        {
            spell_id = 1252240,
            name = "Acolyte's Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_08",
            product = { item_id = 250491, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
                { item_id = 3470, qty = 2 },
                { item_id = 10940, qty = 2 },
            },
            levels = { 0, 85, 85, 85 },
        },
        {
            spell_id = 20201,
            name = "Arcanite Rod",
            categories = { "Inert Enchanting Rods" },
            icon = "inv_staff_19",
            product = { item_id = 16206, qty = 1 },
            materials = {
                { item_id = 12360, qty = 3 },
                { item_id = 12644, qty = 1 },
            },
            levels = { 0, 250, 255, 260 },
        },
        {
            spell_id = 19669,
            name = "Arcanite Skeleton Key",
            categories = { "Miscellaneous" },
            icon = "inv_misc_key_08",
            product = { item_id = 15872, qty = 2 },
            materials = {
                { item_id = 12360, qty = 1 },
                { item_id = 12644, qty = 1 },
            },
            levels = { 0, 250, 255, 260 },
        },
        {
            spell_id = 10001,
            name = "Big Black Mace",
            categories = { "One-Handed Maces" },
            icon = "inv_mace_15",
            product = { item_id = 7945, qty = 1 },
            materials = {
                { item_id = 3860, qty = 16 },
                { item_id = 7971, qty = 1 },
                { item_id = 1210, qty = 4 },
                { item_id = 7966, qty = 1 },
                { item_id = 4304, qty = 2 },
            },
            levels = { 0, 230, 242, 255 },
        },
        {
            spell_id = 3491,
            name = "Big Bronze Knife",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_04",
            product = { item_id = 3848, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 2880, qty = 4 },
                { item_id = 3470, qty = 2 },
                { item_id = 818, qty = 1 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 0, 110, 125, 140 },
        },
        {
            spell_id = 16965,
            name = "Bleakwood Hew",
            categories = { "Two-Handed Axes" },
            icon = "inv_axe_24",
            product = { item_id = 12769, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 12803, qty = 6 },
                { item_id = 8153, qty = 6 },
                { item_id = 12799, qty = 6 },
                { item_id = 12644, qty = 2 },
                { item_id = 8170, qty = 8 },
            },
            levels = { 0, 270, 282, 295 },
        },
        {
            spell_id = 10011,
            name = "Blight",
            categories = { "Polearms" },
            icon = "inv_spear_07",
            product = { item_id = 7959, qty = 1 },
            materials = {
                { item_id = 3860, qty = 28 },
                { item_id = 7972, qty = 10 },
                { item_id = 6037, qty = 10 },
                { item_id = 7966, qty = 6 },
                { item_id = 4304, qty = 6 },
            },
            levels = { 0, 250, 262, 275 },
        },
        {
            spell_id = 16986,
            name = "Blood Talon",
            categories = { "Fist Weapons" },
            icon = "inv_weapon_shortblade_27",
            product = { item_id = 12795, qty = 1 },
            materials = {
                { item_id = 12655, qty = 10 },
                { item_id = 12360, qty = 10 },
                { item_id = 12662, qty = 8 },
                { item_id = 7910, qty = 10 },
                { item_id = 12644, qty = 2 },
            },
            levels = { 0, 325, 337, 350 },
        },
        {
            spell_id = 2741,
            name = "Bronze Axe",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_17",
            product = { item_id = 2849, qty = 1 },
            materials = {
                { item_id = 2841, qty = 7 },
                { item_id = 2880, qty = 4 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 0, 120, 135, 150 },
        },
        {
            spell_id = 9987,
            name = "Bronze Battle Axe",
            categories = { "Two-Handed Axes" },
            icon = "inv_axe_21",
            product = { item_id = 7958, qty = 1 },
            materials = {
                { item_id = 2841, qty = 14 },
                { item_id = 3466, qty = 1 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 0, 140, 155, 170 },
        },
        {
            spell_id = 9986,
            name = "Bronze Greatsword",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_20",
            product = { item_id = 7957, qty = 1 },
            materials = {
                { item_id = 2841, qty = 12 },
                { item_id = 3466, qty = 2 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 0, 135, 150, 165 },
        },
        {
            spell_id = 2740,
            name = "Bronze Mace",
            categories = { "One-Handed Maces" },
            icon = "inv_mace_08",
            product = { item_id = 2848, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 2880, qty = 4 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 0, 115, 130, 145 },
        },
        {
            spell_id = 2742,
            name = "Bronze Shortsword",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_04",
            product = { item_id = 2850, qty = 1 },
            materials = {
                { item_id = 2841, qty = 5 },
                { item_id = 2880, qty = 4 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 0, 125, 140, 155 },
        },
        {
            spell_id = 1252251,
            name = "Crusader's Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_37",
            product = { item_id = 250502, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 3478, qty = 2 },
                { item_id = 10938, qty = 6 },
            },
            levels = { 0, 130, 130, 130 },
        },
        {
            spell_id = 1252246,
            name = "Crusader's Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_13",
            product = { item_id = 250497, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 3478, qty = 2 },
                { item_id = 10938, qty = 4 },
            },
            levels = { 0, 100, 100, 100 },
        },
        {
            spell_id = 1252241,
            name = "Crusader's Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_09",
            product = { item_id = 250492, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
                { item_id = 3470, qty = 2 },
                { item_id = 10938, qty = 2 },
            },
            levels = { 0, 85, 85, 85 },
        },
        {
            spell_id = 16987,
            name = "Darkspear",
            categories = { "Polearms" },
            icon = "inv_spear_08",
            product = { item_id = 12802, qty = 1 },
            materials = {
                { item_id = 12655, qty = 20 },
                { item_id = 12804, qty = 20 },
                { item_id = 12364, qty = 2 },
                { item_id = 12800, qty = 2 },
                { item_id = 12644, qty = 2 },
            },
            levels = { 0, 325, 337, 350 },
        },
        {
            spell_id = 16639,
            name = "Dense Grinding Stone",
            categories = { "Reagents" },
            icon = "inv_stone_grindingstone_05",
            product = { item_id = 12644, qty = 1 },
            materials = {
                { item_id = 12365, qty = 4 },
            },
            levels = { 0, 230, 232, 235 },
        },
        {
            spell_id = 16641,
            name = "Dense Sharpening Stone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_sharpeningstone_05",
            product = { item_id = 12404, qty = 1 },
            materials = {
                { item_id = 12365, qty = 1 },
            },
            levels = { 0, 230, 232, 235 },
        },
        {
            spell_id = 16640,
            name = "Dense Weightstone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_weightstone_05",
            product = { item_id = 12643, qty = 1 },
            materials = {
                { item_id = 12365, qty = 1 },
            },
            levels = { 0, 230, 232, 235 },
        },
        {
            spell_id = 15972,
            name = "Glinting Steel Dagger",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_05",
            product = { item_id = 12259, qty = 1 },
            materials = {
                { item_id = 3859, qty = 10 },
                { item_id = 3466, qty = 2 },
                { item_id = 1206, qty = 1 },
                { item_id = 7067, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 0, 180, 192, 205 },
        },
        {
            spell_id = 14379,
            name = "Golden Rod",
            categories = { "Inert Enchanting Rods" },
            icon = "inv_staff_10",
            product = { item_id = 11128, qty = 1 },
            materials = {
                { item_id = 3577, qty = 1 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 0, 130, 132, 135 },
        },
        {
            spell_id = 7223,
            name = "Golden Scale Bracers",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_10",
            product = { item_id = 6040, qty = 1 },
            materials = {
                { item_id = 3859, qty = 5 },
                { item_id = 3486, qty = 2 },
            },
            levels = { 0, 185, 197, 210 },
        },
        {
            spell_id = 19667,
            name = "Golden Skeleton Key",
            categories = { "Miscellaneous" },
            icon = "inv_misc_key_13",
            product = { item_id = 15870, qty = 2 },
            materials = {
                { item_id = 3577, qty = 1 },
                { item_id = 3486, qty = 1 },
            },
            levels = { 0, 125, 135, 145 },
        },
        {
            spell_id = 3501,
            name = "Green Iron Bracers",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_06",
            product = { item_id = 3835, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 2605, qty = 1 },
            },
            levels = { 0, 165, 177, 190 },
        },
        {
            spell_id = 3508,
            name = "Green Iron Hauberk",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain",
            product = { item_id = 3844, qty = 1 },
            materials = {
                { item_id = 3575, qty = 20 },
                { item_id = 3486, qty = 4 },
                { item_id = 1529, qty = 2 },
                { item_id = 1206, qty = 2 },
                { item_id = 4255, qty = 1 },
            },
            levels = { 0, 180, 192, 205 },
        },
        {
            spell_id = 3502,
            name = "Green Iron Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_03",
            product = { item_id = 3836, qty = 1 },
            materials = {
                { item_id = 3575, qty = 12 },
                { item_id = 3864, qty = 1 },
                { item_id = 2605, qty = 1 },
            },
            levels = { 0, 170, 182, 195 },
        },
        {
            spell_id = 3506,
            name = "Green Iron Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_05",
            product = { item_id = 3842, qty = 1 },
            materials = {
                { item_id = 3575, qty = 8 },
                { item_id = 3486, qty = 1 },
                { item_id = 2605, qty = 1 },
            },
            levels = { 0, 155, 167, 180 },
        },
        {
            spell_id = 1252248,
            name = "Guard's Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_38",
            product = { item_id = 250499, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 3478, qty = 2 },
                { item_id = 1210, qty = 6 },
            },
            levels = { 0, 130, 130, 130 },
        },
        {
            spell_id = 1252243,
            name = "Guard's Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_16",
            product = { item_id = 250494, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 3478, qty = 2 },
                { item_id = 1210, qty = 4 },
            },
            levels = { 0, 100, 100, 100 },
        },
        {
            spell_id = 3296,
            name = "Heavy Bronze Mace",
            categories = { "One-Handed Maces" },
            icon = "inv_mace_08",
            product = { item_id = 3491, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 3466, qty = 1 },
                { item_id = 1206, qty = 1 },
                { item_id = 1210, qty = 1 },
                { item_id = 3478, qty = 2 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 0, 135, 150, 165 },
        },
        {
            spell_id = 3292,
            name = "Heavy Copper Broadsword",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_14",
            product = { item_id = 3487, qty = 1 },
            materials = {
                { item_id = 2840, qty = 14 },
                { item_id = 2880, qty = 2 },
                { item_id = 818, qty = 2 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 0, 110, 130, 150 },
        },
        {
            spell_id = 3337,
            name = "Heavy Grinding Stone",
            categories = { "Reagents" },
            icon = "inv_stone_grindingstone_03",
            product = { item_id = 3486, qty = 1 },
            materials = {
                { item_id = 2838, qty = 3 },
            },
            levels = { 0, 100, 112, 125 },
        },
        {
            spell_id = 9993,
            name = "Heavy Mithril Axe",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_14",
            product = { item_id = 7941, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
                { item_id = 3864, qty = 2 },
                { item_id = 7966, qty = 1 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 0, 210, 222, 235 },
        },
        {
            spell_id = 9968,
            name = "Heavy Mithril Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_plate_01",
            product = { item_id = 7933, qty = 1 },
            materials = {
                { item_id = 3860, qty = 14 },
                { item_id = 4304, qty = 4 },
            },
            levels = { 0, 230, 240, 250 },
        },
        {
            spell_id = 9959,
            name = "Heavy Mithril Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate10",
            product = { item_id = 7930, qty = 1 },
            materials = {
                { item_id = 3860, qty = 16 },
            },
            levels = { 0, 225, 235, 245 },
        },
        {
            spell_id = 9928,
            name = "Heavy Mithril Gauntlet",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_27",
            product = { item_id = 7919, qty = 1 },
            materials = {
                { item_id = 3860, qty = 6 },
                { item_id = 4338, qty = 4 },
            },
            levels = { 0, 200, 210, 220 },
        },
        {
            spell_id = 9926,
            name = "Heavy Mithril Shoulder",
            categories = { "Plate Pauldrons" },
            icon = "inv_shoulder_22",
            product = { item_id = 7918, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 4234, qty = 6 },
            },
            levels = { 0, 200, 210, 220 },
        },
        {
            spell_id = 2674,
            name = "Heavy Sharpening Stone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_sharpeningstone_03",
            product = { item_id = 2871, qty = 1 },
            materials = {
                { item_id = 2838, qty = 1 },
            },
            levels = { 0, 100, 107, 115 },
        },
        {
            spell_id = 3117,
            name = "Heavy Weightstone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_weightstone_03",
            product = { item_id = 3241, qty = 1 },
            materials = {
                { item_id = 2838, qty = 1 },
            },
            levels = { 0, 100, 107, 115 },
        },
        {
            spell_id = 16967,
            name = "Inlaid Thorium Hammer",
            categories = { "Two-Handed Maces" },
            icon = "inv_hammer_09",
            product = { item_id = 12772, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 3577, qty = 4 },
                { item_id = 6037, qty = 2 },
                { item_id = 12361, qty = 2 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 0, 270, 282, 295 },
        },
        {
            spell_id = 8768,
            name = "Iron Buckle",
            categories = { "Reagents" },
            icon = "inv_misc_armorkit_12",
            product = { item_id = 7071, qty = 2 },
            materials = {
                { item_id = 3575, qty = 1 },
            },
            levels = { 0, 125, 127, 130 },
        },
        {
            spell_id = 8366,
            name = "Ironforge Chain",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain",
            product = { item_id = 6730, qty = 1 },
            materials = {
                { item_id = 2840, qty = 12 },
                { item_id = 774, qty = 2 },
                { item_id = 3470, qty = 2 },
            },
            levels = { 0, 80, 100, 120 },
        },
        {
            spell_id = 8368,
            name = "Ironforge Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_05",
            product = { item_id = 6733, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 1210, qty = 3 },
                { item_id = 3478, qty = 4 },
            },
            levels = { 0, 140, 155, 170 },
        },
        {
            spell_id = 9961,
            name = "Mithril Coif",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_35",
            product = { item_id = 7931, qty = 1 },
            materials = {
                { item_id = 3860, qty = 10 },
                { item_id = 4338, qty = 6 },
            },
            levels = { 0, 225, 235, 245 },
        },
        {
            spell_id = 9942,
            name = "Mithril Plate Gloves",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_31",
            product = { item_id = 7925, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 4234, qty = 6 },
                { item_id = 4338, qty = 4 },
            },
            levels = { 0, 215, 225, 235 },
        },
        {
            spell_id = 9931,
            name = "Mithril Plate Pants",
            categories = { "Mail Legguards" },
            icon = "inv_pants_04",
            product = { item_id = 7920, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
            },
            levels = { 0, 205, 215, 225 },
        },
        {
            spell_id = 9957,
            name = "Orcish War Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_03",
            product = { item_id = 7929, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
                { item_id = 7067, qty = 1 },
            },
            levels = { 0, 225, 235, 245 },
        },
        {
            spell_id = 9979,
            name = "Ornate Mithril Boots",
            categories = { "Plate Boots" },
            icon = "inv_boots_01",
            product = { item_id = 7936, qty = 1 },
            materials = {
                { item_id = 3860, qty = 14 },
                { item_id = 6037, qty = 2 },
                { item_id = 4304, qty = 4 },
                { item_id = 7966, qty = 1 },
                { item_id = 7909, qty = 1 },
            },
            levels = { 0, 240, 250, 260 },
        },
        {
            spell_id = 9972,
            name = "Ornate Mithril Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate10",
            product = { item_id = 7935, qty = 1 },
            materials = {
                { item_id = 3860, qty = 16 },
                { item_id = 6037, qty = 6 },
                { item_id = 7077, qty = 1 },
                { item_id = 7966, qty = 1 },
            },
            levels = { 0, 235, 245, 255 },
        },
        {
            spell_id = 9980,
            name = "Ornate Mithril Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_10",
            product = { item_id = 7937, qty = 1 },
            materials = {
                { item_id = 3860, qty = 16 },
                { item_id = 6037, qty = 2 },
                { item_id = 7971, qty = 1 },
                { item_id = 7966, qty = 1 },
            },
            levels = { 0, 240, 250, 260 },
        },
        {
            spell_id = 2672,
            name = "Patterned Bronze Bracers",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_07",
            product = { item_id = 2868, qty = 1 },
            materials = {
                { item_id = 2841, qty = 5 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 0, 125, 140, 155 },
        },
        {
            spell_id = 6517,
            name = "Pearl-handled Dagger",
            categories = { "Daggers" },
            icon = "inv_weapon_shortblade_05",
            product = { item_id = 5540, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 3466, qty = 1 },
                { item_id = 5498, qty = 2 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 0, 115, 130, 145 },
        },
        {
            spell_id = 10007,
            name = "Phantom Blade",
            categories = { "One-Handed Swords" },
            icon = "inv_sword_40",
            product = { item_id = 7961, qty = 1 },
            materials = {
                { item_id = 3860, qty = 28 },
                { item_id = 7081, qty = 6 },
                { item_id = 6037, qty = 8 },
                { item_id = 3823, qty = 2 },
                { item_id = 7909, qty = 6 },
                { item_id = 7966, qty = 4 },
                { item_id = 4304, qty = 2 },
            },
            levels = { 0, 245, 257, 270 },
        },
        {
            spell_id = 1252323,
            name = "Prefect's Waistguard",
            categories = { "Plate Belts" },
            icon = "inv_belt_08",
            source = {
                {
                    type = "Vendor",
                    item_id = 251426,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Stondry Darkhammer, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 250574, qty = 1 },
            materials = {
                { item_id = 12359, qty = 24 },
                { item_id = 7966, qty = 4 },
                { item_id = 249432, qty = 6 },
                { item_id = 249410, qty = 6 },
                { item_id = 13926, qty = 10 },
            },
            levels = { 0, 270, 280, 290 },
        },
        {
            spell_id = 1252249,
            name = "Protector's Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_39",
            product = { item_id = 250500, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 3478, qty = 2 },
                { item_id = 818, qty = 6 },
            },
            levels = { 0, 130, 130, 130 },
        },
        {
            spell_id = 1252244,
            name = "Protector's Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_05",
            product = { item_id = 250495, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 3478, qty = 2 },
                { item_id = 818, qty = 4 },
            },
            levels = { 0, 100, 100, 100 },
        },
        {
            spell_id = 1252239,
            name = "Protector's Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_07",
            product = { item_id = 250490, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
                { item_id = 3470, qty = 2 },
                { item_id = 818, qty = 2 },
            },
            levels = { 0, 85, 85, 85 },
        },
        {
            spell_id = 7817,
            name = "Rough Bronze Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            product = { item_id = 6350, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 3470, qty = 6 },
            },
            levels = { 0, 100, 115, 130 },
        },
        {
            spell_id = 2671,
            name = "Rough Bronze Bracers",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_05",
            product = { item_id = 2867, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
            },
            levels = { 0, 115, 130, 145 },
        },
        {
            spell_id = 2670,
            name = "Rough Bronze Cuirass",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_08",
            product = { item_id = 2866, qty = 1 },
            materials = {
                { item_id = 2841, qty = 7 },
            },
            levels = { 0, 120, 135, 150 },
        },
        {
            spell_id = 2668,
            name = "Rough Bronze Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_03",
            product = { item_id = 2865, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
            },
            levels = { 0, 120, 135, 150 },
        },
        {
            spell_id = 3328,
            name = "Rough Bronze Shoulders",
            categories = { "Mail Pauldrons" },
            icon = "inv_shoulder_05",
            product = { item_id = 3480, qty = 1 },
            materials = {
                { item_id = 2841, qty = 5 },
                { item_id = 1210, qty = 1 },
                { item_id = 3478, qty = 1 },
            },
            levels = { 0, 115, 130, 145 },
        },
        {
            spell_id = 16980,
            name = "Rune Edge",
            categories = { "One-Handed Axes" },
            icon = "inv_axe_17",
            product = { item_id = 12779, qty = 1 },
            materials = {
                { item_id = 12359, qty = 30 },
                { item_id = 12799, qty = 2 },
                { item_id = 12644, qty = 2 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 0, 285, 297, 310 },
        },
        {
            spell_id = 2664,
            name = "Runed Copper Bracers",
            categories = { "Mail Bracers" },
            icon = "inv_bracer_03",
            product = { item_id = 2854, qty = 1 },
            materials = {
                { item_id = 2840, qty = 10 },
                { item_id = 3470, qty = 3 },
            },
            levels = { 0, 90, 102, 115 },
        },
        {
            spell_id = 1252292,
            name = "Shining Mithril Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_35",
            product = { item_id = 250543, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 6037, qty = 9 },
                { item_id = 3486, qty = 2 },
                { item_id = 7075, qty = 1 },
            },
            levels = { 0, 235, 245, 255 },
        },
        {
            spell_id = 2675,
            name = "Shining Silver Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_plate15",
            product = { item_id = 2870, qty = 1 },
            materials = {
                { item_id = 2841, qty = 20 },
                { item_id = 1206, qty = 2 },
                { item_id = 1705, qty = 2 },
                { item_id = 5500, qty = 2 },
                { item_id = 2842, qty = 4 },
            },
            levels = { 0, 150, 165, 180 },
        },
        {
            spell_id = 7818,
            name = "Silver Rod",
            categories = { "Inert Enchanting Rods" },
            icon = "inv_staff_01",
            product = { item_id = 6338, qty = 1 },
            materials = {
                { item_id = 2842, qty = 1 },
                { item_id = 3470, qty = 2 },
            },
            levels = { 0, 80, 82, 85 },
        },
        {
            spell_id = 19666,
            name = "Silver Skeleton Key",
            categories = { "Miscellaneous" },
            icon = "inv_misc_key_03",
            product = { item_id = 15869, qty = 2 },
            materials = {
                { item_id = 2842, qty = 1 },
                { item_id = 3470, qty = 1 },
            },
            levels = { 0, 75, 85, 95 },
        },
        {
            spell_id = 3331,
            name = "Silvered Bronze Boots",
            categories = { "Mail Boots" },
            icon = "inv_boots_01",
            product = { item_id = 3482, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 2842, qty = 1 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 0, 135, 150, 165 },
        },
        {
            spell_id = 3333,
            name = "Silvered Bronze Gauntlets",
            categories = { "Mail Gauntlets" },
            icon = "inv_gauntlets_05",
            product = { item_id = 3483, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 2842, qty = 1 },
                { item_id = 3478, qty = 2 },
            },
            levels = { 0, 140, 155, 170 },
        },
        {
            spell_id = 9920,
            name = "Solid Grinding Stone",
            categories = { "Reagents" },
            icon = "inv_stone_grindingstone_04",
            product = { item_id = 7966, qty = 1 },
            materials = {
                { item_id = 7912, qty = 4 },
            },
            levels = { 0, 175, 180, 185 },
        },
        {
            spell_id = 9918,
            name = "Solid Sharpening Stone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_sharpeningstone_04",
            product = { item_id = 7964, qty = 1 },
            materials = {
                { item_id = 7912, qty = 1 },
            },
            levels = { 0, 175, 180, 185 },
        },
        {
            spell_id = 9921,
            name = "Solid Weightstone",
            categories = { "Weapon Stones" },
            icon = "inv_stone_weightstone_04",
            product = { item_id = 7965, qty = 1 },
            materials = {
                { item_id = 7912, qty = 1 },
            },
            levels = { 0, 175, 180, 185 },
        },
        {
            spell_id = 9916,
            name = "Steel Breastplate",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_plate05",
            product = { item_id = 7963, qty = 1 },
            materials = {
                { item_id = 3859, qty = 16 },
                { item_id = 3486, qty = 3 },
            },
            levels = { 0, 200, 212, 225 },
        },
        {
            spell_id = 9935,
            name = "Steel Plate Helm",
            categories = { "Plate Helmets" },
            icon = "inv_helmet_03",
            product = { item_id = 7922, qty = 1 },
            materials = {
                { item_id = 3859, qty = 14 },
                { item_id = 7966, qty = 1 },
            },
            levels = { 0, 210, 220, 230 },
        },
        {
            spell_id = 10003,
            name = "The Shatterer",
            categories = { "One-Handed Maces" },
            icon = "inv_hammer_18",
            product = { item_id = 7954, qty = 1 },
            materials = {
                { item_id = 3860, qty = 24 },
                { item_id = 7075, qty = 4 },
                { item_id = 6037, qty = 6 },
                { item_id = 3864, qty = 5 },
                { item_id = 1529, qty = 5 },
                { item_id = 7966, qty = 4 },
                { item_id = 4304, qty = 4 },
            },
            levels = { 0, 235, 247, 260 },
        },
        {
            spell_id = 16960,
            name = "Thorium Greatsword",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_22",
            product = { item_id = 12764, qty = 1 },
            materials = {
                { item_id = 12359, qty = 16 },
                { item_id = 12644, qty = 2 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 0, 260, 272, 285 },
        },
        {
            spell_id = 9974,
            name = "Truesilver Breastplate",
            categories = { "Plate Chestguards" },
            icon = "inv_chest_plate04",
            product = { item_id = 7939, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
                { item_id = 6037, qty = 24 },
                { item_id = 7910, qty = 4 },
                { item_id = 7971, qty = 4 },
                { item_id = 7966, qty = 2 },
            },
            levels = { 0, 240, 250, 260 },
        },
        {
            spell_id = 10015,
            name = "Truesilver Champion",
            categories = { "Two-Handed Swords" },
            icon = "inv_sword_19",
            product = { item_id = 7960, qty = 1 },
            materials = {
                { item_id = 3860, qty = 30 },
                { item_id = 6037, qty = 16 },
                { item_id = 7910, qty = 6 },
                { item_id = 7081, qty = 4 },
                { item_id = 7966, qty = 8 },
                { item_id = 4304, qty = 6 },
            },
            levels = { 0, 260, 272, 285 },
        },
        {
            spell_id = 9954,
            name = "Truesilver Gauntlets",
            categories = { "Plate Gauntlets" },
            icon = "inv_gauntlets_29",
            product = { item_id = 7938, qty = 1 },
            materials = {
                { item_id = 3860, qty = 10 },
                { item_id = 6037, qty = 8 },
                { item_id = 7909, qty = 3 },
                { item_id = 3864, qty = 3 },
                { item_id = 5966, qty = 1 },
                { item_id = 7966, qty = 2 },
            },
            levels = { 0, 220, 230, 240 },
        },
        {
            spell_id = 14380,
            name = "Truesilver Rod",
            categories = { "Inert Enchanting Rods" },
            icon = "inv_staff_11",
            product = { item_id = 11144, qty = 1 },
            materials = {
                { item_id = 6037, qty = 1 },
                { item_id = 3486, qty = 1 },
            },
            levels = { 0, 180, 182, 185 },
        },
        {
            spell_id = 19668,
            name = "Truesilver Skeleton Key",
            categories = { "Miscellaneous" },
            icon = "inv_misc_key_11",
            product = { item_id = 15871, qty = 2 },
            materials = {
                { item_id = 6037, qty = 1 },
                { item_id = 7966, qty = 1 },
            },
            levels = { 0, 175, 185, 195 },
        },
        {
            spell_id = 1252247,
            name = "Veteran's Chain Helm",
            categories = { "Mail Helmets" },
            icon = "inv_helmet_39",
            product = { item_id = 250498, qty = 1 },
            materials = {
                { item_id = 2841, qty = 8 },
                { item_id = 3478, qty = 2 },
                { item_id = 5498, qty = 6 },
            },
            levels = { 0, 130, 130, 130 },
        },
        {
            spell_id = 1252242,
            name = "Veteran's Chain Leggings",
            categories = { "Mail Legguards" },
            icon = "inv_pants_mail_05",
            product = { item_id = 250493, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 3478, qty = 2 },
                { item_id = 5498, qty = 4 },
            },
            levels = { 0, 100, 100, 100 },
        },
        {
            spell_id = 1252237,
            name = "Veteran's Chain Shirt",
            categories = { "Mail Chestguards" },
            icon = "inv_chest_chain_07",
            product = { item_id = 250488, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
                { item_id = 3470, qty = 2 },
                { item_id = 5498, qty = 2 },
            },
            levels = { 0, 85, 85, 85 },
        },
        {
            spell_id = 9788,
            name = "Armorsmith",
            icon = "inv_chest_plate04",
        },
        {
            spell_id = 17041,
            name = "Master Axesmith",
            icon = "inv_axe_05",
        },
        {
            spell_id = 17040,
            name = "Master Hammersmith",
            icon = "inv_hammer_23",
        },
        {
            spell_id = 17039,
            name = "Master Swordsmith",
            icon = "inv_sword_41",
        },
        {
            spell_id = 9787,
            name = "Weaponsmith",
            icon = "inv_sword_25",
        },
    },
}
