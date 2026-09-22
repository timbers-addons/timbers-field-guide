local _, TFG = ...

TFG.COOKING_FOREVER = {
    [1] = {
        {
            spell_id = 7751,
            name = "Brilliant Smallfish",
            categories = { "Attack Power Food" },
            icon = "inv_misc_fish_07",
            source = {
                {
                    type = "Vendor",
                    item_id = 6325,
                    cost = 40,
                    location = "Nyoma, Teldrassil",
                },
                {
                    type = "Vendor",
                    item_id = 6325,
                    cost = 40,
                    location = "Catherine Leland, Stormwind City",
                },
                {
                    type = "Vendor",
                    item_id = 6325,
                    cost = 40,
                    location = "Tharynn Bouden, Elwynn Forest",
                },
            },
            product = { item_id = 6290, qty = 1 },
            materials = {
                { item_id = 6291, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 2538,
            name = "Charred Wolf Meat",
            categories = { "Everyday Meals" },
            icon = "inv_misc_food_18",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 2679, qty = 1 },
            materials = {
                { item_id = 2672, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 15935,
            name = "Crispy Bat Wing",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_46",
            source = {
                {
                    type = "Item",
                    item_id = 12226,
                },
            },
            product = { item_id = 12224, qty = 1 },
            materials = {
                { item_id = 12223, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 21143,
            name = "Gingerbread Cookie",
            categories = { "Winter Veil Treats" },
            icon = "inv_misc_food_62",
            source = {
                {
                    type = "Item",
                    item_id = 17200,
                },
            },
            product = { item_id = 17197, qty = 1 },
            materials = {
                { item_id = 6889, qty = 1 },
                { item_id = 17194, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 8604,
            name = "Herb Baked Egg",
            categories = { "Stamina Food" },
            icon = "inv_egg_03",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 6888, qty = 1 },
            materials = {
                { item_id = 6889, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 2540,
            name = "Roasted Boar Meat",
            categories = { "Strength Food" },
            icon = "inv_misc_food_18",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 2681, qty = 1 },
            materials = {
                { item_id = 769, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 7752,
            name = "Slitherskin Mackerel",
            categories = { "Attack Power Food" },
            icon = "inv_misc_fish_24",
            source = {
                {
                    type = "Vendor",
                    item_id = 6326,
                    cost = 40,
                    location = "Nessa Shadowsong, Teldrassil",
                },
            },
            product = { item_id = 787, qty = 1 },
            materials = {
                { item_id = 6303, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 2550,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            levels = { 1 },
            cap = 75,
        },
    },
    [10] = {
        {
            spell_id = 6412,
            name = "Kaldorei Spider Kabob",
            categories = { "Everyday Meals" },
            icon = "inv_misc_food_68",
            source = {
                {
                    type = "Item",
                    item_id = 5482,
                },
            },
            product = { item_id = 5472, qty = 1 },
            materials = {
                { item_id = 5465, qty = 1 },
            },
            levels = { 10, 50, 70, 90 },
        },
        {
            spell_id = 2539,
            name = "Spiced Wolf Meat",
            categories = { "Agility Food" },
            icon = "inv_misc_food_65",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            product = { item_id = 2680, qty = 1 },
            materials = {
                { item_id = 2672, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 10, 50, 70, 90 },
        },
    },
    [20] = {
        {
            spell_id = 1229737,
            name = "Basic Campfire",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_camelot_camping_welcomingcampfire",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 279981, qty = 1 },
            materials = {
                { item_id = 4470, qty = 1 },
            },
            levels = { 20, 1, 3, 5 },
        },
        {
            spell_id = 6413,
            name = "Scorpid Surprise",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_misc_food_10",
            source = {
                {
                    type = "Item",
                    item_id = 5483,
                },
            },
            product = { item_id = 5473, qty = 1 },
            materials = {
                { item_id = 5466, qty = 1 },
            },
            levels = { 20, 60, 80, 100 },
        },
    },
    [25] = {
        {
            spell_id = 2795,
            name = "Beer Basted Boar Ribs",
            categories = { "Strength Food" },
            icon = "inv_misc_food_48",
            source = {
                {
                    type = "Quest",
                    item_id = 2889,
                    location = "Ragnar Thunderbrew, Dun Morogh",
                    quest_id = 384,
                    quest_name = "Beer Basted Boar Ribs",
                },
            },
            product = { item_id = 2888, qty = 1 },
            materials = {
                { item_id = 2886, qty = 1 },
                { item_id = 2894, qty = 1 },
            },
            levels = { 25, 60, 80, 100 },
        },
        {
            spell_id = 1249957,
            name = "Peace Tea",
            categories = { "Soothing Drinks" },
            icon = "inv_drink_15",
            source = {
                {
                    type = "Item",
                    item_id = 249879,
                },
            },
            product = { item_id = 249865, qty = 1 },
            materials = {
                { item_id = 159, qty = 1 },
                { item_id = 2447, qty = 2 },
            },
            levels = { 25, 25, 45, 65 },
        },
        {
            spell_id = 1270633,
            name = "Skywall Souffle",
            categories = { "Stamina Food" },
            icon = "inv_misc_food_cooked_fishcake",
            source = {
                {
                    type = "Item",
                    item_id = 263511,
                },
            },
            product = { item_id = 263509, qty = 1 },
            materials = {
                { item_id = 6889, qty = 2 },
                { item_id = 10284, qty = 1 },
            },
            levels = { 25, 20, 32, 45 },
        },
        {
            spell_id = 1250156,
            name = "Tasty Raptor Bites",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_68",
            source = {
                {
                    type = "Item",
                    item_id = 250187,
                },
            },
            product = { item_id = 250079, qty = 1 },
            materials = {
                { item_id = 3685, qty = 1 },
                { item_id = 2678, qty = 4 },
            },
            levels = { 25, 35, 55, 75 },
        },
        {
            spell_id = 1249963,
            name = "Venomous Smoothie",
            categories = { "Delightful Drinks" },
            icon = "inv_drink_21",
            source = {
                {
                    type = "Vendor",
                    item_id = 249885,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Kalsey Sanden, Redridge Mountains",
                },
            },
            product = { item_id = 249871, qty = 1 },
            materials = {
                { item_id = 159, qty = 1 },
                { item_id = 2678, qty = 1 },
                { item_id = 1475, qty = 1 },
            },
            levels = { 25, 5, 10, 15 },
        },
    },
    [35] = {
        {
            spell_id = 21144,
            name = "Egg Nog",
            categories = { "Winter Veil Treats" },
            icon = "inv_drink_04",
            source = {
                {
                    type = "Item",
                    item_id = 17201,
                },
            },
            product = { item_id = 17198, qty = 1 },
            materials = {
                { item_id = 6889, qty = 1 },
                { item_id = 1179, qty = 1 },
                { item_id = 17196, qty = 1 },
                { item_id = 17194, qty = 1 },
            },
            levels = { 35, 75, 95, 115 },
        },
        {
            spell_id = 1270635,
            name = "Pincer Bites",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_misc_claw_deepcrab_purple",
            source = {
                {
                    type = "Item",
                    item_id = 263513,
                },
            },
            product = { item_id = 263512, qty = 1 },
            materials = {
                { item_id = 2675, qty = 1 },
                { item_id = 10284, qty = 1 },
            },
            levels = { 35, 30, 42, 55 },
        },
        {
            spell_id = 6414,
            name = "Roasted Kodo Meat",
            categories = { "Stamina Food" },
            icon = "inv_misc_food_60",
            source = {
                {
                    type = "Item",
                    item_id = 5484,
                },
            },
            product = { item_id = 5474, qty = 2 },
            materials = {
                { item_id = 5467, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 35, 75, 95, 115 },
        },
    },
    [40] = {
        {
            spell_id = 8607,
            name = "Smoked Bear Meat",
            categories = { "Strength Food" },
            icon = "inv_misc_food_13",
            source = {
                {
                    type = "Item",
                    item_id = 6892,
                },
            },
            product = { item_id = 6890, qty = 1 },
            materials = {
                { item_id = 3173, qty = 1 },
            },
            levels = { 40, 80, 100, 120 },
        },
    },
    [50] = {
        {
            spell_id = 6499,
            name = "Boiled Clams",
            categories = { "Everyday Meals" },
            icon = "inv_misc_shell_02",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 5525, qty = 1 },
            materials = {
                { item_id = 5503, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 2541,
            name = "Coyote Steak",
            categories = { "Agility Food" },
            icon = "inv_misc_food_65",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 2684, qty = 1 },
            materials = {
                { item_id = 2673, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 6415,
            name = "Fillet of Frenzy",
            categories = { "Fisherman's Delights" },
            icon = "inv_misc_fish_05",
            source = {
                {
                    type = "Vendor",
                    item_id = 5485,
                    cost = 400,
                    location = "Laird, Darkshore",
                },
            },
            product = { item_id = 5476, qty = 2 },
            materials = {
                { item_id = 5468, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 2542,
            name = "Goretusk Liver Pie",
            categories = { "Strength Food" },
            icon = "inv_misc_food_10",
            source = {
                {
                    type = "Quest",
                    item_id = 2697,
                    location = "Salma Saldean, Westfall",
                    quest_id = 22,
                    quest_name = "Goretusk Liver Pie",
                },
            },
            product = { item_id = 724, qty = 1 },
            materials = {
                { item_id = 723, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 7754,
            name = "Loch Frenzy Delight",
            categories = { "Fisherman's Delights" },
            icon = "inv_potion_01",
            source = {
                {
                    type = "Item",
                    item_id = 6329,
                },
            },
            product = { item_id = 6316, qty = 1 },
            materials = {
                { item_id = 6317, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 7753,
            name = "Longjaw Mud Snapper",
            categories = { "Attack Power Food" },
            icon = "inv_misc_fish_32",
            source = {
                {
                    type = "Vendor",
                    item_id = 6328,
                    cost = 400,
                    location = "Nyoma, Teldrassil",
                },
                {
                    type = "Vendor",
                    item_id = 6328,
                    cost = 400,
                    location = "Tharynn Bouden, Elwynn Forest",
                },
            },
            product = { item_id = 4592, qty = 1 },
            materials = {
                { item_id = 6289, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 7827,
            name = "Rainbow Fin Albacore",
            categories = { "Spell Damage Food" },
            icon = "inv_misc_fish_27",
            source = {
                {
                    type = "Vendor",
                    item_id = 6368,
                    cost = 400,
                    location = "Nessa Shadowsong, Teldrassil",
                },
                {
                    type = "Vendor",
                    item_id = 6368,
                    cost = 400,
                    location = "Gritta Chumwater, Riverglades",
                },
                {
                    type = "Vendor",
                    item_id = 6368,
                    cost = 400,
                    location = "Stuart Fleming, Wetlands",
                },
                {
                    type = "Vendor",
                    item_id = 6368,
                    cost = 400,
                    location = "Catherine Leland, Stormwind City",
                },
            },
            product = { item_id = 5095, qty = 1 },
            materials = {
                { item_id = 6361, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 6416,
            name = "Strider Stew",
            categories = { "Intellect Food" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 5486,
                },
            },
            product = { item_id = 5477, qty = 2 },
            materials = {
                { item_id = 5469, qty = 1 },
                { item_id = 4536, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 3102,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
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
    [60] = {
        {
            spell_id = 3371,
            name = "Blood Sausage",
            categories = { "Strength Food" },
            icon = "inv_misc_food_49",
            source = {
                {
                    type = "Item",
                    item_id = 3679,
                },
            },
            product = { item_id = 3220, qty = 2 },
            materials = {
                { item_id = 3173, qty = 1 },
                { item_id = 3172, qty = 1 },
                { item_id = 3174, qty = 1 },
            },
            levels = { 60, 100, 120, 140 },
        },
        {
            spell_id = 9513,
            name = "Thistle Tea",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_drink_milk_05",
            source = {
                {
                    type = "Item",
                    item_id = 7678,
                },
                {
                    type = "Item",
                    item_id = 18160,
                },
            },
            product = { item_id = 7676, qty = 1 },
            materials = {
                { item_id = 2452, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 60, 100, 120, 140 },
        },
    },
    [75] = {
        {
            spell_id = 1250157,
            name = "Breakfast Omelette",
            categories = { "Stamina Food" },
            icon = "inv_misc_food_cooked_fishcake",
            source = {
                {
                    type = "Item",
                    item_id = 250188,
                },
            },
            product = { item_id = 250080, qty = 1 },
            materials = {
                { item_id = 6889, qty = 1 },
                { item_id = 2678, qty = 4 },
            },
            levels = { 75, 75, 92, 110 },
        },
        {
            spell_id = 2544,
            name = "Crab Cake",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_08",
            source = {
                {
                    type = "Trainer",
                    cost = 200,
                },
            },
            product = { item_id = 2683, qty = 1 },
            materials = {
                { item_id = 2674, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 75, 115, 135, 155 },
        },
        {
            spell_id = 1250154,
            name = "Twice-Spiced Raptor Slice",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_legion_saltpeppershank",
            source = {
                {
                    type = "Item",
                    item_id = 250185,
                },
            },
            product = { item_id = 250077, qty = 1 },
            materials = {
                { item_id = 12184, qty = 1 },
                { item_id = 2678, qty = 2 },
            },
            levels = { 75, 115, 132, 150 },
        },
        {
            spell_id = 2543,
            name = "Westfall Stew",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Quest",
                    item_id = 728,
                    location = "Salma Saldean, Westfall",
                    quest_id = 38,
                    quest_name = "Westfall Stew",
                },
            },
            product = { item_id = 733, qty = 1 },
            materials = {
                { item_id = 729, qty = 1 },
                { item_id = 730, qty = 1 },
                { item_id = 731, qty = 1 },
            },
            levels = { 75, 115, 135, 155 },
        },
    },
    [80] = {
        {
            spell_id = 3370,
            name = "Crocolisk Steak",
            categories = { "Agility Food" },
            icon = "inv_misc_food_47",
            source = {
                {
                    type = "Item",
                    item_id = 3678,
                },
            },
            product = { item_id = 3662, qty = 1 },
            materials = {
                { item_id = 2924, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 80, 120, 140, 160 },
        },
        {
            spell_id = 2546,
            name = "Dry Pork Ribs",
            categories = { "Strength Food" },
            icon = "inv_misc_food_48",
            source = {
                {
                    type = "Trainer",
                    cost = 150,
                },
            },
            product = { item_id = 2687, qty = 1 },
            materials = {
                { item_id = 2677, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 80, 120, 140, 160 },
        },
        {
            spell_id = 25704,
            name = "Smoked Sagefish",
            categories = { "Spell Damage Food" },
            icon = "inv_misc_fish_20",
            source = {
                {
                    type = "Vendor",
                    item_id = 21099,
                    cost = 500,
                    location = "Kalsey Sanden, Redridge Mountains",
                },
                {
                    type = "Vendor",
                    item_id = 21099,
                    cost = 500,
                    location = "Fimbo Greasemitz, Riverglades",
                },
                {
                    type = "Vendor",
                    item_id = 21099,
                    cost = 500,
                    location = "Kelsey Yance, Stranglethorn Vale",
                },
                {
                    type = "Vendor",
                    item_id = 21099,
                    cost = 500,
                    location = "Miranda Turner, Riverglades",
                },
                {
                    type = "Vendor",
                    item_id = 21099,
                    cost = 500,
                    location = "Fyldan, Darnassus",
                },
                {
                    type = "Vendor",
                    item_id = 21099,
                    cost = 500,
                    location = "Nyoma, Teldrassil",
                },
                {
                    type = "Vendor",
                    item_id = 21099,
                    cost = 500,
                    location = "Emrul Riknussun, Ironforge",
                },
                {
                    type = "Vendor",
                    item_id = 21099,
                    cost = 500,
                    location = "Erika Tate, Stormwind City",
                },
            },
            product = { item_id = 21072, qty = 1 },
            materials = {
                { item_id = 21071, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 80, 120, 140, 160 },
        },
    },
    [85] = {
        {
            spell_id = 2545,
            name = "Cooked Crab Claw",
            categories = { "Intellect Food" },
            icon = "inv_misc_birdbeck_02",
            source = {
                {
                    type = "Item",
                    item_id = 2698,
                },
            },
            product = { item_id = 2682, qty = 1 },
            materials = {
                { item_id = 2675, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 85, 125, 145, 165 },
        },
        {
            spell_id = 8238,
            name = "Savory Deviate Delight",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_misc_monsterhead_04",
            source = {
                {
                    type = "Item",
                    item_id = 6661,
                },
            },
            product = { item_id = 6657, qty = 1 },
            materials = {
                { item_id = 6522, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 85, 125, 145, 165 },
        },
        {
            spell_id = 1252566,
            name = "Savory Whimsyfin Delight",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_misc_fish_69",
            source = {
                {
                    type = "Item",
                    item_id = 251526,
                },
            },
            product = { item_id = 251525, qty = 1 },
            materials = {
                { item_id = 251524, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 85, 125, 145, 165 },
        },
    },
    [90] = {
        {
            spell_id = 6501,
            name = "Clam Chowder",
            categories = { "Everyday Meals" },
            icon = "inv_potion_01",
            source = {
                {
                    type = "Item",
                    item_id = 5528,
                },
            },
            product = { item_id = 5526, qty = 1 },
            materials = {
                { item_id = 5503, qty = 1 },
                { item_id = 1179, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 90, 130, 150, 170 },
        },
        {
            spell_id = 6417,
            name = "Dig Rat Stew",
            categories = { "Everyday Meals" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 5487,
                },
            },
            product = { item_id = 5478, qty = 2 },
            materials = {
                { item_id = 5051, qty = 1 },
            },
            levels = { 90, 130, 150, 170 },
        },
        {
            spell_id = 1283400,
            name = "Journeyman Campfire",
            categories = { "Camping" },
            icon = "inv_camelot_camping_welcomingcampfire",
            source = {
                {
                    type = "Item",
                    item_id = 273087,
                },
            },
            product = { item_id = 279961, qty = 1 },
            materials = {
                { item_id = 11291, qty = 1 },
            },
            levels = { 90, 90, 115, 140 },
        },
        {
            spell_id = 3372,
            name = "Murloc Fin Soup",
            categories = { "Stamina Food" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 3680,
                },
            },
            product = { item_id = 3663, qty = 1 },
            materials = {
                { item_id = 1468, qty = 2 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 90, 130, 150, 170 },
        },
    },
    [100] = {
        {
            spell_id = 7755,
            name = "Bristle Whisker Catfish",
            categories = { "Fisherman's Delights" },
            icon = "inv_misc_fish_30",
            source = {
                {
                    type = "Vendor",
                    item_id = 6330,
                    cost = 1200,
                    location = "Gritta Chumwater, Riverglades",
                },
                {
                    type = "Vendor",
                    item_id = 6330,
                    cost = 1200,
                    location = "Catherine Leland, Stormwind City",
                },
            },
            product = { item_id = 4593, qty = 1 },
            materials = {
                { item_id = 6308, qty = 1 },
            },
            levels = { 100, 140, 160, 180 },
        },
        {
            spell_id = 6418,
            name = "Crispy Lizard Tail",
            categories = { "Stamina Food" },
            icon = "inv_misc_food_17",
            source = {
                {
                    type = "Item",
                    item_id = 5488,
                },
            },
            product = { item_id = 5479, qty = 2 },
            materials = {
                { item_id = 5470, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 100, 140, 160, 180 },
        },
        {
            spell_id = 2547,
            name = "Redridge Goulash",
            categories = { "Intellect Food" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 2699,
                },
            },
            product = { item_id = 1082, qty = 1 },
            materials = {
                { item_id = 1081, qty = 1 },
                { item_id = 1080, qty = 1 },
            },
            levels = { 100, 135, 155, 175 },
        },
        {
            spell_id = 1249958,
            name = "Royal Tea",
            categories = { "Soothing Drinks" },
            icon = "inv_drink_15",
            source = {
                {
                    type = "Item",
                    item_id = 249880,
                },
            },
            product = { item_id = 249866, qty = 1 },
            materials = {
                { item_id = 1179, qty = 1 },
                { item_id = 785, qty = 2 },
            },
            levels = { 100, 85, 105, 125 },
        },
        {
            spell_id = 2549,
            name = "Seasoned Wolf Kabob",
            categories = { "Agility Food" },
            icon = "inv_misc_food_16",
            source = {
                {
                    type = "Item",
                    item_id = 2701,
                },
            },
            product = { item_id = 1017, qty = 3 },
            materials = {
                { item_id = 1015, qty = 2 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 100, 140, 160, 180 },
        },
        {
            spell_id = 1249964,
            name = "Slimy Smoothie",
            categories = { "Delightful Drinks" },
            icon = "inv_drink_15_color03",
            source = {
                {
                    type = "Vendor",
                    item_id = 249886,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Kalsey Sanden, Redridge Mountains",
                },
            },
            product = { item_id = 249872, qty = 1 },
            materials = {
                { item_id = 1179, qty = 1 },
                { item_id = 2678, qty = 2 },
                { item_id = 3174, qty = 1 },
            },
            levels = { 100, 85, 90, 95 },
        },
    },
    [110] = {
        {
            spell_id = 3397,
            name = "Big Bear Steak",
            categories = { "Strength Food" },
            icon = "inv_misc_food_47",
            source = {
                {
                    type = "Vendor",
                    item_id = 3734,
                    cost = 1600,
                    location = "Ulthaan, Ashenvale",
                },
            },
            product = { item_id = 3726, qty = 1 },
            materials = {
                { item_id = 3730, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 110, 150, 170, 190 },
        },
        {
            spell_id = 3377,
            name = "Gooey Spider Cake",
            categories = { "Everyday Meals" },
            icon = "inv_misc_food_10",
            source = {
                {
                    type = "Item",
                    item_id = 3683,
                },
            },
            product = { item_id = 3666, qty = 1 },
            materials = {
                { item_id = 2251, qty = 2 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 110, 150, 170, 190 },
        },
        {
            spell_id = 6419,
            name = "Lean Venison",
            categories = { "Strength Food" },
            icon = "inv_misc_food_72",
            source = {
                {
                    type = "Vendor",
                    item_id = 5489,
                    cost = 1200,
                    location = "Ulthaan, Ashenvale",
                },
            },
            product = { item_id = 5480, qty = 2 },
            materials = {
                { item_id = 5471, qty = 1 },
                { item_id = 2678, qty = 4 },
            },
            levels = { 110, 150, 170, 190 },
        },
        {
            spell_id = 2548,
            name = "Succulent Pork Ribs",
            categories = { "Strength Food" },
            icon = "inv_misc_food_16",
            source = {
                {
                    type = "Item",
                    item_id = 2700,
                },
            },
            product = { item_id = 2685, qty = 1 },
            materials = {
                { item_id = 2677, qty = 2 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 110, 130, 150, 170 },
        },
    },
    [120] = {
        {
            spell_id = 3373,
            name = "Crocolisk Gumbo",
            categories = { "Agility Food" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 3681,
                },
            },
            product = { item_id = 3664, qty = 1 },
            materials = {
                { item_id = 3667, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 120, 160, 180, 200 },
        },
    },
    [125] = {
        {
            spell_id = 6500,
            name = "Goblin Deviled Clams",
            categories = { "Everyday Meals" },
            icon = "inv_misc_shell_01",
            source = {
                {
                    type = "Trainer",
                    cost = 300,
                },
            },
            product = { item_id = 5527, qty = 1 },
            materials = {
                { item_id = 5504, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 125, 165, 185, 205 },
        },
        {
            spell_id = 3398,
            name = "Hot Lion Chops",
            categories = { "Agility Food" },
            icon = "inv_misc_food_18",
            source = {
                {
                    type = "Item",
                    item_id = 3735,
                },
            },
            product = { item_id = 3727, qty = 1 },
            materials = {
                { item_id = 3731, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 125, 175, 195, 215 },
        },
        {
            spell_id = 15853,
            name = "Lean Wolf Steak",
            categories = { "Agility Food" },
            icon = "inv_misc_food_47",
            source = {
                {
                    type = "Item",
                    item_id = 12227,
                },
            },
            product = { item_id = 12209, qty = 1 },
            materials = {
                { item_id = 1015, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 125, 165, 185, 205 },
        },
        {
            spell_id = 1249965,
            name = "Mrrggl Smrrthle",
            categories = { "Delightful Drinks" },
            icon = "inv_drink_21_color01",
            source = {
                {
                    type = "Vendor",
                    item_id = 249887,
                    currencies = {
                        { currency_id = 3402, qty = 30, name = "Merchant's Favor" },
                    },
                    location = "Kalsey Sanden, Redridge Mountains",
                },
            },
            product = { item_id = 249873, qty = 1 },
            materials = {
                { item_id = 1205, qty = 1 },
                { item_id = 2692, qty = 2 },
                { item_id = 1468, qty = 1 },
            },
            levels = { 125, 135, 140, 145 },
        },
        {
            spell_id = 1249959,
            name = "Root Tea",
            categories = { "Soothing Drinks" },
            icon = "inv_drink_15",
            source = {
                {
                    type = "Item",
                    item_id = 249881,
                },
            },
            product = { item_id = 249867, qty = 1 },
            materials = {
                { item_id = 1205, qty = 1 },
                { item_id = 3357, qty = 2 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 3413,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
            levels = { 125 },
            cap = 225,
        },
    },
    [130] = {
        {
            spell_id = 3376,
            name = "Curiously Tasty Omelet",
            categories = { "Stamina Food" },
            icon = "inv_egg_04",
            source = {
                {
                    type = "Item",
                    item_id = 3682,
                },
            },
            product = { item_id = 3665, qty = 1 },
            materials = {
                { item_id = 3685, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 130, 170, 190, 210 },
        },
    },
    [140] = {
        {
            spell_id = 1262978,
            name = "Cookie's Feast",
            categories = { "Camping" },
            icon = "inv_cooking_80_majorfeast",
            source = {
                {
                    type = "Item",
                    item_id = 273102,
                },
            },
            product = { item_id = 279957, qty = 1 },
            materials = {
                { item_id = 12037, qty = 2 },
                { item_id = 12204, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 140, 140, 142, 145 },
        },
    },
    [150] = {
        {
            spell_id = 24418,
            name = "Heavy Crocolisk Stew",
            categories = { "Agility Food" },
            icon = "inv_misc_food_64",
            source = {
                {
                    type = "Item",
                    item_id = 20075,
                },
            },
            product = { item_id = 20074, qty = 1 },
            materials = {
                { item_id = 3667, qty = 2 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 150, 160, 180, 200 },
        },
        {
            spell_id = 3399,
            name = "Tasty Lion Steak",
            categories = { "Agility Food" },
            icon = "inv_misc_food_14",
            source = {
                {
                    type = "Item",
                    item_id = 3736,
                },
            },
            product = { item_id = 3728, qty = 1 },
            materials = {
                { item_id = 3731, qty = 2 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 150, 190, 210, 230 },
        },
    },
    [175] = {
        {
            spell_id = 4094,
            name = "Barbecued Buzzard Wing",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_18",
            source = {
                {
                    type = "Item",
                    item_id = 4609,
                },
            },
            product = { item_id = 4457, qty = 1 },
            materials = {
                { item_id = 3404, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 1250151,
            name = "Bear Brisket",
            categories = { "Strength Food" },
            icon = "inv_misc_food_47",
            source = {
                {
                    type = "Item",
                    item_id = 250182,
                },
            },
            product = { item_id = 250074, qty = 1 },
            materials = {
                { item_id = 3730, qty = 2 },
                { item_id = 2692, qty = 3 },
            },
            levels = { 175, 200, 210, 220 },
        },
        {
            spell_id = 15863,
            name = "Carrion Surprise",
            categories = { "Everyday Meals" },
            icon = "inv_misc_food_49",
            source = {
                {
                    type = "Item",
                    item_id = 12232,
                },
            },
            product = { item_id = 12213, qty = 1 },
            materials = {
                { item_id = 12037, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 7213,
            name = "Giant Clam Scorcho",
            categories = { "Everyday Meals" },
            icon = "inv_ammo_firetar",
            source = {
                {
                    type = "Vendor",
                    item_id = 6039,
                    cost = 5000,
                    location = "Kelsey Yance, Stranglethorn Vale",
                },
            },
            product = { item_id = 6038, qty = 1 },
            materials = {
                { item_id = 4655, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 1250155,
            name = "Giant Scrambled Eggs",
            categories = { "Stamina Food" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 250186,
                },
            },
            product = { item_id = 250078, qty = 1 },
            materials = {
                { item_id = 12207, qty = 2 },
                { item_id = 2692, qty = 4 },
            },
            levels = { 175, 195, 207, 220 },
        },
        {
            spell_id = 13028,
            name = "Goldthorn Tea",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_drink_15",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10841, qty = 4 },
            materials = {
                { item_id = 3821, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15856,
            name = "Hot Wolf Ribs",
            categories = { "Agility Food" },
            icon = "inv_misc_food_48",
            source = {
                {
                    type = "Item",
                    item_id = 12229,
                },
            },
            product = { item_id = 13851, qty = 1 },
            materials = {
                { item_id = 12203, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15861,
            name = "Jungle Stew",
            categories = { "Agility Food" },
            icon = "inv_drink_17",
            source = {
                {
                    type = "Item",
                    item_id = 12231,
                },
            },
            product = { item_id = 12212, qty = 2 },
            materials = {
                { item_id = 12202, qty = 1 },
                { item_id = 159, qty = 1 },
                { item_id = 4536, qty = 2 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 20916,
            name = "Mithril Headed Trout",
            categories = { "Attack Power Food" },
            icon = "inv_misc_fish_02",
            source = {
                {
                    type = "Vendor",
                    item_id = 17062,
                    cost = 2200,
                    location = "Kelsey Yance, Stranglethorn Vale",
                },
                {
                    type = "Vendor",
                    item_id = 17062,
                    cost = 2200,
                    location = "Stuart Fleming, Wetlands",
                },
            },
            product = { item_id = 8364, qty = 1 },
            materials = {
                { item_id = 8365, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15865,
            name = "Mystery Stew",
            categories = { "Everyday Meals" },
            icon = "inv_drink_19",
            source = {
                {
                    type = "Vendor",
                    item_id = 12233,
                    cost = 3000,
                    location = "Helenia Olden, Dustwallow Marsh",
                },
            },
            product = { item_id = 12214, qty = 1 },
            materials = {
                { item_id = 12037, qty = 1 },
                { item_id = 2596, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15855,
            name = "Roast Raptor",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_50",
            source = {
                {
                    type = "Vendor",
                    item_id = 12228,
                    cost = 5000,
                    location = "Helenia Olden, Dustwallow Marsh",
                },
            },
            product = { item_id = 12210, qty = 1 },
            materials = {
                { item_id = 12184, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 7828,
            name = "Rockscale Cod",
            categories = { "Fisherman's Delights" },
            icon = "inv_misc_fish_04",
            source = {
                {
                    type = "Vendor",
                    item_id = 6369,
                    cost = 2200,
                    location = "Kelsey Yance, Stranglethorn Vale",
                },
                {
                    type = "Vendor",
                    item_id = 6369,
                    cost = 2200,
                    location = "Stuart Fleming, Wetlands",
                },
            },
            product = { item_id = 4594, qty = 1 },
            materials = {
                { item_id = 6362, qty = 1 },
            },
            levels = { 175, 190, 210, 230 },
        },
        {
            spell_id = 25954,
            name = "Sagefish Delight",
            categories = { "Spell Damage Food" },
            icon = "inv_misc_fish_21",
            source = {
                {
                    type = "Vendor",
                    item_id = 21219,
                    cost = 5000,
                    location = "Kalsey Sanden, Redridge Mountains",
                },
                {
                    type = "Vendor",
                    item_id = 21219,
                    cost = 5000,
                    location = "Fimbo Greasemitz, Riverglades",
                },
                {
                    type = "Vendor",
                    item_id = 21219,
                    cost = 5000,
                    location = "Kelsey Yance, Stranglethorn Vale",
                },
                {
                    type = "Vendor",
                    item_id = 21219,
                    cost = 5000,
                    location = "Miranda Turner, Riverglades",
                },
                {
                    type = "Vendor",
                    item_id = 21219,
                    cost = 5000,
                    location = "Fyldan, Darnassus",
                },
                {
                    type = "Vendor",
                    item_id = 21219,
                    cost = 5000,
                    location = "Nyoma, Teldrassil",
                },
                {
                    type = "Vendor",
                    item_id = 21219,
                    cost = 5000,
                    location = "Emrul Riknussun, Ironforge",
                },
                {
                    type = "Vendor",
                    item_id = 21219,
                    cost = 5000,
                    location = "Erika Tate, Stormwind City",
                },
            },
            product = { item_id = 21217, qty = 1 },
            materials = {
                { item_id = 21153, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 3400,
            name = "Soothing Turtle Bisque",
            categories = { "Everyday Meals" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 3737,
                },
            },
            product = { item_id = 3729, qty = 1 },
            materials = {
                { item_id = 3712, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
    },
    [180] = {
        {
            spell_id = 1249966,
            name = "Calcified Smoothie",
            categories = { "Delightful Drinks" },
            icon = "inv_drink_15_color01",
            source = {
                {
                    type = "Vendor",
                    item_id = 249888,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Kalsey Sanden, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249874, qty = 1 },
            materials = {
                { item_id = 1708, qty = 1 },
                { item_id = 2692, qty = 3 },
                { item_id = 5637, qty = 1 },
            },
            levels = { 180, 185, 190, 195 },
        },
        {
            spell_id = 1249960,
            name = "Triage Tea",
            categories = { "Soothing Drinks" },
            icon = "inv_drink_15",
            source = {
                {
                    type = "Item",
                    item_id = 249882,
                },
            },
            product = { item_id = 249868, qty = 1 },
            materials = {
                { item_id = 1708, qty = 1 },
                { item_id = 3818, qty = 2 },
            },
            levels = { 180, 195, 215, 235 },
        },
    },
    [185] = {
        {
            spell_id = 1295834,
            name = "Plain Ol' Paletusk",
            categories = { "Strength Food" },
            icon = "inv_misc_food_16",
            source = {
                {
                    type = "Vendor",
                    item_id = 274977,
                    cost = 2000,
                    location = "Martha Wellsworth, Riverglades",
                },
            },
            product = { item_id = 274976, qty = 1 },
            materials = {
                { item_id = 769, qty = 2 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 185, 200, 215, 230 },
        },
    },
    [200] = {
        {
            spell_id = 1295805,
            name = "Briny Seafood Stew",
            categories = { "Spell Damage Food" },
            icon = "inv_misc_food_154_fish_77green",
            source = {
                {
                    type = "Item",
                    item_id = 274972,
                },
            },
            product = { item_id = 274971, qty = 1 },
            materials = {
                { item_id = 730, qty = 2 },
                { item_id = 12206, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 200, 220, 230, 240 },
        },
        {
            spell_id = 15906,
            name = "Dragonbreath Chili",
            categories = { "Everyday Meals" },
            icon = "inv_drink_17",
            source = {
                {
                    type = "Item",
                    item_id = 12239,
                },
            },
            product = { item_id = 12217, qty = 1 },
            materials = {
                { item_id = 12037, qty = 1 },
                { item_id = 4402, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 200, 240, 260, 280 },
        },
        {
            spell_id = 1291341,
            name = "Expert Campfire",
            categories = { "Camping" },
            icon = "inv_camelot_camping_welcomingcampfire",
            source = {
                {
                    type = "Item",
                    item_id = 273101,
                },
            },
            product = { item_id = 279974, qty = 1 },
            materials = {
                { item_id = 272941, qty = 1 },
            },
            levels = { 200, 200, 212, 225 },
        },
        {
            spell_id = 15910,
            name = "Heavy Kodo Stew",
            categories = { "Stamina Food" },
            icon = "inv_drink_19",
            source = {
                {
                    type = "Item",
                    item_id = 12240,
                },
            },
            product = { item_id = 12215, qty = 2 },
            materials = {
                { item_id = 12204, qty = 2 },
                { item_id = 3713, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 200, 240, 260, 280 },
        },
        {
            spell_id = 1249967,
            name = "Spicy Smoothie",
            categories = { "Delightful Drinks" },
            icon = "inv_drink_21_color04",
            source = {
                {
                    type = "Vendor",
                    item_id = 249889,
                    currencies = {
                        { currency_id = 3402, qty = 60, name = "Merchant's Favor" },
                    },
                    location = "Kalsey Sanden, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249875, qty = 1 },
            materials = {
                { item_id = 1645, qty = 1 },
                { item_id = 3713, qty = 3 },
                { item_id = 4402, qty = 1 },
            },
            levels = { 200, 215, 220, 225 },
        },
        {
            spell_id = 21175,
            name = "Spider Sausage",
            categories = { "Everyday Meals" },
            icon = "inv_misc_food_66",
            source = {
                {
                    type = "Trainer",
                    cost = 4000,
                },
            },
            product = { item_id = 17222, qty = 1 },
            materials = {
                { item_id = 12205, qty = 2 },
            },
            levels = { 200, 240, 260, 280 },
        },
        {
            spell_id = 1249961,
            name = "Sunny Tea",
            categories = { "Soothing Drinks" },
            icon = "inv_drink_15",
            source = {
                {
                    type = "Item",
                    item_id = 249883,
                },
            },
            product = { item_id = 249869, qty = 1 },
            materials = {
                { item_id = 1645, qty = 1 },
                { item_id = 8838, qty = 2 },
            },
            levels = { 200, 220, 235, 250 },
        },
    },
    [225] = {
        {
            spell_id = 18239,
            name = "Cooked Glossy Mightfish",
            categories = { "Attack Power Food" },
            icon = "inv_misc_monsterhead_03",
            source = {
                {
                    type = "Vendor",
                    item_id = 13940,
                    cost = 16000,
                    location = "Kelsey Yance, Stranglethorn Vale",
                },
            },
            product = { item_id = 13927, qty = 1 },
            materials = {
                { item_id = 13754, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 225, 265, 285, 305 },
        },
        {
            spell_id = 18241,
            name = "Filet of Redgill",
            categories = { "Fisherman's Delights" },
            icon = "inv_misc_fish_06",
            source = {
                {
                    type = "Vendor",
                    item_id = 13941,
                    cost = 16000,
                    location = "Kelsey Yance, Stranglethorn Vale",
                },
            },
            product = { item_id = 13930, qty = 1 },
            materials = {
                { item_id = 13758, qty = 1 },
            },
            levels = { 225, 265, 285, 305 },
        },
        {
            spell_id = 15933,
            name = "Monster Omelet",
            categories = { "Stamina Food" },
            icon = "inv_misc_food_06",
            source = {
                {
                    type = "Item",
                    item_id = 16110,
                },
            },
            product = { item_id = 12218, qty = 1 },
            materials = {
                { item_id = 12207, qty = 1 },
                { item_id = 3713, qty = 2 },
            },
            levels = { 225, 265, 285, 305 },
        },
        {
            spell_id = 1319313,
            name = "Plated Armorfish",
            categories = { "Armor Food" },
            icon = "inv_misc_fish_04",
            source = {
                {
                    type = "Item",
                    item_id = 286153,
                },
            },
            product = { item_id = 286152, qty = 1 },
            materials = {
                { item_id = 13890, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 225, 245, 250, 255 },
        },
        {
            spell_id = 1250153,
            name = "Raptor Rouladen",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_meat_cooked_07",
            source = {
                {
                    type = "Item",
                    item_id = 250184,
                },
            },
            product = { item_id = 250076, qty = 1 },
            materials = {
                { item_id = 12184, qty = 2 },
                { item_id = 2692, qty = 4 },
            },
            levels = { 225, 225, 237, 250 },
        },
        {
            spell_id = 1250142,
            name = "Savory Stag Sliders",
            categories = { "Strength Food" },
            icon = "inv_misc_food_122_steak",
            source = {
                {
                    type = "Item",
                    item_id = 250173,
                },
            },
            product = { item_id = 250065, qty = 1 },
            materials = {
                { item_id = 5471, qty = 2 },
                { item_id = 2692, qty = 3 },
            },
            levels = { 225, 225, 240, 255 },
        },
        {
            spell_id = 15915,
            name = "Spiced Chili Crab",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_48",
            source = {
                {
                    type = "Item",
                    item_id = 16111,
                },
            },
            product = { item_id = 12216, qty = 1 },
            materials = {
                { item_id = 12206, qty = 1 },
                { item_id = 2692, qty = 2 },
            },
            levels = { 225, 265, 285, 305 },
        },
        {
            spell_id = 18238,
            name = "Spotted Yellowtail",
            categories = { "Spell Damage Food" },
            icon = "inv_misc_fish_01",
            source = {
                {
                    type = "Vendor",
                    item_id = 13939,
                    cost = 16000,
                    location = "Gikkix, Tanaris",
                },
            },
            product = { item_id = 6887, qty = 1 },
            materials = {
                { item_id = 4603, qty = 1 },
            },
            levels = { 225, 265, 285, 305 },
        },
        {
            spell_id = 22480,
            name = "Tender Wolf Steak",
            categories = { "Agility Food" },
            icon = "inv_misc_food_47",
            source = {
                {
                    type = "Vendor",
                    item_id = 18046,
                    cost = 12000,
                    location = "Innkeeper Zizplink, Riverglades",
                },
                {
                    type = "Vendor",
                    item_id = 18046,
                    cost = 12000,
                    location = "Innkeeper Fizzgrimble, Tanaris",
                },
                {
                    type = "Vendor",
                    item_id = 18046,
                    cost = 12000,
                    location = "Dirge Quikcleave, Tanaris",
                },
            },
            product = { item_id = 18045, qty = 1 },
            materials = {
                { item_id = 12208, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 225, 265, 285, 305 },
        },
        {
            spell_id = 20626,
            name = "Undermine Clam Chowder",
            categories = { "Everyday Meals" },
            icon = "inv_drink_17",
            source = {
                {
                    type = "Vendor",
                    item_id = 16767,
                    cost = 3000,
                    location = "Grizzek, Riverglades",
                },
            },
            product = { item_id = 16766, qty = 2 },
            materials = {
                { item_id = 7974, qty = 2 },
                { item_id = 2692, qty = 1 },
                { item_id = 1179, qty = 1 },
            },
            levels = { 225, 265, 285, 305 },
        },
        {
            spell_id = 18260,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
            levels = { 225 },
            cap = 300,
        },
    },
    [240] = {
        {
            spell_id = 18240,
            name = "Grilled Squid",
            categories = { "Combat Prowess Food" },
            icon = "inv_misc_fish_13",
            source = {
                {
                    type = "Vendor",
                    item_id = 13942,
                    cost = 16000,
                    location = "Gikkix, Tanaris",
                },
            },
            product = { item_id = 13928, qty = 1 },
            materials = {
                { item_id = 13755, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 240, 280, 300, 320 },
        },
        {
            spell_id = 18242,
            name = "Hot Smoked Bass",
            categories = { "Combat Prowess Food" },
            icon = "inv_misc_fish_03",
            source = {
                {
                    type = "Vendor",
                    item_id = 13943,
                    cost = 16000,
                    location = "Kelsey Yance, Stranglethorn Vale",
                },
            },
            product = { item_id = 13929, qty = 1 },
            materials = {
                { item_id = 13756, qty = 1 },
                { item_id = 2692, qty = 2 },
            },
            levels = { 240, 280, 300, 320 },
        },
    },
    [250] = {
        {
            spell_id = 18243,
            name = "Nightfin Soup",
            categories = { "Spell Damage Food" },
            icon = "inv_drink_17",
            source = {
                {
                    type = "Vendor",
                    item_id = 13945,
                    cost = 20000,
                    location = "Gikkix, Tanaris",
                },
            },
            product = { item_id = 13931, qty = 1 },
            materials = {
                { item_id = 13759, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 250, 290, 310, 330 },
        },
        {
            spell_id = 18244,
            name = "Poached Sunscale Salmon",
            categories = { "Attack Power Food" },
            icon = "inv_misc_fish_19",
            source = {
                {
                    type = "Vendor",
                    item_id = 13946,
                    cost = 20000,
                    location = "Gikkix, Tanaris",
                },
            },
            product = { item_id = 13932, qty = 1 },
            materials = {
                { item_id = 13760, qty = 1 },
            },
            levels = { 250, 290, 310, 330 },
        },
        {
            spell_id = 1249962,
            name = "Sage's Tea",
            categories = { "Soothing Drinks" },
            icon = "inv_drink_15",
            source = {
                {
                    type = "Item",
                    item_id = 249884,
                },
            },
            product = { item_id = 249870, qty = 1 },
            materials = {
                { item_id = 8766, qty = 1 },
                { item_id = 13465, qty = 2 },
            },
            levels = { 250, 260, 275, 290 },
        },
        {
            spell_id = 1249968,
            name = "Wicked Smoothie",
            categories = { "Delightful Drinks" },
            icon = "inv_drink_15_color04",
            source = {
                {
                    type = "Vendor",
                    item_id = 249890,
                    currencies = {
                        { currency_id = 3402, qty = 90, name = "Merchant's Favor" },
                    },
                    location = "Kalsey Sanden, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 249876, qty = 1 },
            materials = {
                { item_id = 8766, qty = 1 },
                { item_id = 3713, qty = 4 },
                { item_id = 8146, qty = 1 },
            },
            levels = { 250, 240, 245, 250 },
        },
    },
    [275] = {
        {
            spell_id = 18247,
            name = "Baked Salmon",
            categories = { "Spell Damage Food" },
            icon = "inv_misc_fish_20",
            source = {
                {
                    type = "Item",
                    item_id = 13949,
                },
            },
            product = { item_id = 13935, qty = 1 },
            materials = {
                { item_id = 13889, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 275, 315, 335, 355 },
        },
        {
            spell_id = 1250144,
            name = "Bat Hachee",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_115_condorsoup",
            source = {
                {
                    type = "Item",
                    item_id = 250175,
                },
            },
            product = { item_id = 250067, qty = 1 },
            materials = {
                { item_id = 12223, qty = 3 },
                { item_id = 3713, qty = 2 },
            },
            levels = { 275, 280, 295, 310 },
        },
        {
            spell_id = 1250147,
            name = "Bear Bruscitti",
            categories = { "Strength Food" },
            icon = "inv_misc_food_legion_fighterchow",
            source = {
                {
                    type = "Item",
                    item_id = 250178,
                },
            },
            product = { item_id = 250070, qty = 1 },
            materials = {
                { item_id = 3730, qty = 3 },
                { item_id = 3713, qty = 3 },
            },
            levels = { 275, 275, 290, 305 },
        },
        {
            spell_id = 1250158,
            name = "Clam Linguine",
            categories = { "Everyday Meals" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 250189,
                },
            },
            product = { item_id = 250081, qty = 1 },
            materials = {
                { item_id = 7974, qty = 3 },
                { item_id = 3713, qty = 4 },
            },
            levels = { 275, 200, 220, 240 },
        },
        {
            spell_id = 1250146,
            name = "Flank au Poivre",
            categories = { "Agility Food" },
            icon = "inv_misc_food_meat_cooked_06",
            source = {
                {
                    type = "Item",
                    item_id = 250177,
                },
            },
            product = { item_id = 250069, qty = 1 },
            materials = {
                { item_id = 12203, qty = 3 },
                { item_id = 3713, qty = 3 },
            },
            levels = { 275, 285, 300, 315 },
        },
        {
            spell_id = 18245,
            name = "Lobster Stew",
            categories = { "Spell Damage Food" },
            icon = "inv_drink_17",
            source = {
                {
                    type = "Item",
                    item_id = 13947,
                },
            },
            product = { item_id = 13933, qty = 1 },
            materials = {
                { item_id = 13888, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 275, 315, 335, 355 },
        },
        {
            spell_id = 18246,
            name = "Mightfish Steak",
            categories = { "Attack Power Food" },
            icon = "inv_misc_food_47",
            source = {
                {
                    type = "Item",
                    item_id = 13948,
                },
            },
            product = { item_id = 13934, qty = 1 },
            materials = {
                { item_id = 13893, qty = 1 },
                { item_id = 2692, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 275, 315, 335, 355 },
        },
        {
            spell_id = 1250152,
            name = "Prehistoric Pulled Raptor",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_124_skewer",
            source = {
                {
                    type = "Item",
                    item_id = 250183,
                },
            },
            product = { item_id = 250075, qty = 1 },
            materials = {
                { item_id = 12184, qty = 3 },
                { item_id = 3713, qty = 4 },
            },
            levels = { 275, 260, 280, 300 },
        },
        {
            spell_id = 1250150,
            name = "Raging Raptor Ribs",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_legion_spicedribroast",
            source = {
                {
                    type = "Item",
                    item_id = 250181,
                },
            },
            product = { item_id = 250073, qty = 1 },
            materials = {
                { item_id = 12184, qty = 2 },
                { item_id = 2692, qty = 3 },
            },
            levels = { 275, 185, 200, 215 },
        },
        {
            spell_id = 22761,
            name = "Runn Tum Tuber Surprise",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_63",
            source = {
                {
                    type = "Item",
                    item_id = 18267,
                },
            },
            product = { item_id = 18254, qty = 1 },
            materials = {
                { item_id = 18255, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 275, 315, 335, 355 },
        },
        {
            spell_id = 1250145,
            name = "Savory Turtle Stew",
            categories = { "Stamina Food" },
            icon = "inv_misc_food_cooked_braisedturtle",
            source = {
                {
                    type = "Item",
                    item_id = 250176,
                },
            },
            product = { item_id = 250068, qty = 1 },
            materials = {
                { item_id = 3712, qty = 3 },
                { item_id = 3713, qty = 3 },
            },
            levels = { 275, 260, 280, 300 },
        },
        {
            spell_id = 1250143,
            name = "Soaring Pamplona",
            categories = { "Intellect Food" },
            icon = "inv_misc_food_meat_cooked_05",
            source = {
                {
                    type = "Item",
                    item_id = 250174,
                },
            },
            product = { item_id = 250066, qty = 1 },
            materials = {
                { item_id = 3404, qty = 3 },
                { item_id = 3713, qty = 3 },
            },
            levels = { 275, 275, 292, 310 },
        },
        {
            spell_id = 1250148,
            name = "Steaming Stag Steak",
            categories = { "Strength Food" },
            icon = "inv_misc_food_meat_cooked_01",
            source = {
                {
                    type = "Item",
                    item_id = 250179,
                },
            },
            product = { item_id = 250071, qty = 1 },
            materials = {
                { item_id = 5471, qty = 3 },
                { item_id = 3713, qty = 4 },
            },
            levels = { 275, 260, 280, 300 },
        },
        {
            spell_id = 1294014,
            name = "Sweetpaw Jam",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_misc_bowl_01",
            source = {
                {
                    type = "Item",
                    item_id = 274415,
                },
            },
            product = { item_id = 267341, qty = 1 },
            materials = {
                { item_id = 249796, qty = 3 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 275, 280, 282, 285 },
        },
        {
            spell_id = 1250149,
            name = "Swiftstrike Steak",
            categories = { "Agility Food" },
            icon = "inv_misc_food_49",
            source = {
                {
                    type = "Item",
                    item_id = 250180,
                },
            },
            product = { item_id = 250072, qty = 1 },
            materials = {
                { item_id = 12202, qty = 3 },
                { item_id = 3713, qty = 2 },
            },
            levels = { 275, 175, 190, 205 },
        },
    },
    [285] = {
        {
            spell_id = 24801,
            name = "Smoked Desert Dumplings",
            categories = { "Strength Food" },
            icon = "inv_misc_food_64",
            product = { item_id = 20452, qty = 1 },
            materials = {
                { item_id = 20424, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 285, 325, 345, 365 },
        },
    },
    [300] = {
        {
            spell_id = 25659,
            name = "Dirge's Kickin' Chimaerok Chops",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_misc_food_65",
            source = {
                {
                    type = "Item",
                    item_id = 21025,
                },
            },
            product = { item_id = 21023, qty = 5 },
            materials = {
                { item_id = 2692, qty = 1 },
                { item_id = 9061, qty = 1 },
                { item_id = 8150, qty = 1 },
                { item_id = 21024, qty = 1 },
            },
            levels = { 300, 325, 345, 365 },
        },
        {
            spell_id = 1263067,
            name = "Iron Oven",
            categories = { "Camping" },
            icon = "achievement_cooking_masteroftheoven",
            source = {
                {
                    type = "Item",
                    item_id = 273115,
                },
            },
            product = { item_id = 279982, qty = 1 },
            materials = {
                { item_id = 10284, qty = 10 },
                { item_id = 159, qty = 5 },
                { item_id = 3713, qty = 4 },
            },
            levels = { 300, 300, 300, 300 },
        },
    },
    [980] = {
        {
            spell_id = 1255241,
            name = "Cleansing Stew",
            categories = { "Everyday Meals" },
            icon = "inv_misc_frostystew",
            product = { item_id = 252683, qty = 1 },
            materials = {
                { item_id = 252948, qty = 1 },
                { item_id = 5471, qty = 1 },
                { item_id = 12207, qty = 1 },
            },
        },
        {
            spell_id = 1270632,
            name = "Critter Cookie",
            categories = { "Miscellaneous Cuisines" },
            icon = "inv_misc_food_150_cookie",
            product = { item_id = 263507, qty = 1 },
            materials = {
                { item_id = 10284, qty = 5 },
            },
            levels = { 0, 80, 82, 85 },
        },
        {
            spell_id = 1247741,
            name = "Spinefin Halibut",
            categories = { "Fisherman's Delights" },
            icon = "inv_misc_fish_22",
            product = { item_id = 8957, qty = 1 },
            materials = {
                { item_id = 8959, qty = 1 },
            },
            levels = { 0, 210, 215, 220 },
        },
    },
}
