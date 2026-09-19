local _, TFG = ...

TFG.ENCHANTING_FOREVER = {
    [1] = {
        {
            spell_id = 13262,
            name = "Disenchant",
            icon = "spell_holy_removecurse",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 1, 20, 40, 60 },
        },
        {
            spell_id = 1249114,
            name = "Dormant  Heart of the Mountain",
            categories = { "Curios" },
            icon = "inv_misc_gem_diamond_01",
            product = { item_id = 249473, qty = 1 },
            materials = {
                { item_id = 11382, qty = 1 },
                { item_id = 7080, qty = 1 },
                { item_id = 14343, qty = 3 },
            },
            levels = { 1, 285, 305, 325 },
        },
        {
            spell_id = 1245320,
            name = "Dust to Motes",
            categories = { "Reagents" },
            icon = "inv_elemental_mote_mana",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 247786, qty = 3 },
            materials = {
                { item_id = 10940, qty = 1 },
            },
            levels = { 1, 10, 12, 15 },
        },
        {
            spell_id = 7418,
            name = "Enchant Bracer - Inferior Stamina",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 247786, qty = 1 },
            },
            levels = { 1, 20, 22, 25 },
        },
        {
            spell_id = 7428,
            name = "Enchant Bracer - Minor Deflect",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10938, qty = 1 },
            },
            levels = { 1, 80, 100, 120 },
        },
        {
            spell_id = 1249107,
            name = "Frozen Heart of the Mountain",
            categories = { "Curios" },
            icon = "inv_misc_gem_sapphire_01",
            product = { item_id = 249469, qty = 1 },
            materials = {
                { item_id = 11382, qty = 1 },
                { item_id = 12808, qty = 1 },
                { item_id = 14343, qty = 3 },
            },
            levels = { 1, 285, 305, 325 },
        },
        {
            spell_id = 1249112,
            name = "Molten Heart of the Mountain",
            categories = { "Curios" },
            icon = "inv_misc_gem_ruby_01",
            product = { item_id = 249470, qty = 1 },
            materials = {
                { item_id = 11382, qty = 1 },
                { item_id = 7076, qty = 1 },
                { item_id = 14343, qty = 3 },
            },
            levels = { 1, 285, 305, 325 },
        },
        {
            spell_id = 1245321,
            name = "Novice's Practice Wand",
            categories = { "Wands" },
            icon = "inv_weapon_shortblade_09",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 247789, qty = 1 },
            materials = {
                { item_id = 4470, qty = 1 },
                { item_id = 247786, qty = 1 },
            },
            levels = { 1, 10, 12, 15 },
        },
        {
            spell_id = 7421,
            name = "Runed Copper Rod",
            categories = { "Runed Enchanting Rods" },
            icon = "inv_staff_goldfeathered_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 6218, qty = 1 },
            materials = {
                { item_id = 6217, qty = 1 },
                { item_id = 247786, qty = 1 },
            },
            levels = { 1, 5, 7, 10 },
        },
        {
            spell_id = 7411,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 1 },
            cap = 75,
        },
    },
    [5] = {
        {
            spell_id = 25124,
            name = "Minor Wizard Oil",
            categories = { "Wizard Oils" },
            icon = "inv_poison_mindnumbing",
            source = {
                {
                    type = "Vendor",
                    item_id = 20758,
                    cost = 500,
                    location = "Jessara Cordell, Stormwind City",
                },
                {
                    type = "Vendor",
                    item_id = 20758,
                    cost = 500,
                    location = "Vaean, Darnassus",
                },
                {
                    type = "Vendor",
                    item_id = 20758,
                    cost = 500,
                    location = "Tilli Thistlefuzz, Ironforge",
                },
            },
            product = { item_id = 20744, qty = 1 },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 17034, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 5, 30, 47, 65 },
        },
    },
    [10] = {
        {
            spell_id = 14293,
            name = "Lesser Magic Wand",
            categories = { "Wands" },
            icon = "inv_staff_02",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            product = { item_id = 11287, qty = 1 },
            materials = {
                { item_id = 4470, qty = 1 },
                { item_id = 10938, qty = 1 },
            },
            levels = { 10, 75, 95, 115 },
        },
    },
    [15] = {
        {
            spell_id = 7420,
            name = "Enchant Chest - Inferior Stamina",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                    cost = 50,
                },
            },
            materials = {
                { item_id = 10940, qty = 1 },
            },
            levels = { 15, 70, 90, 110 },
        },
    },
    [20] = {
        {
            spell_id = 7443,
            name = "Enchant Chest - Minor Intellect",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 6342,
                    cost = 300,
                    location = "Jessara Cordell, Stormwind City",
                },
                {
                    type = "Vendor",
                    item_id = 6342,
                    cost = 300,
                    location = "Vaean, Darnassus",
                },
                {
                    type = "Vendor",
                    item_id = 6342,
                    cost = 300,
                    location = "Tilli Thistlefuzz, Ironforge",
                },
            },
            materials = {
                { item_id = 10938, qty = 1 },
            },
            levels = { 20, 80, 100, 120 },
        },
        {
            spell_id = 1230643,
            name = "Enchanted Lute",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_10_enchanting2_magicswirl_bronze",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
                {
                    type = "Quest",
                    location = "Sam Sarsaparilla, Elwynn Forest",
                    quest_id = 97917,
                    quest_name = "Camping 101: Enchanting",
                },
            },
            product = { item_id = 279976, qty = 1 },
            materials = {
                { item_id = 4470, qty = 1 },
                { item_id = 10940, qty = 1 },
            },
            levels = { 20, 20, 22, 25 },
        },
    },
    [40] = {
        {
            spell_id = 7426,
            name = "Enchant Chest - Minor Absorption",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            materials = {
                { item_id = 10938, qty = 1 },
            },
            levels = { 40, 90, 110, 130 },
        },
    },
    [45] = {
        {
            spell_id = 7454,
            name = "Enchant Cloak - Minor Resistance",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 10938, qty = 1 },
            },
            levels = { 45, 95, 115, 135 },
        },
    },
    [50] = {
        {
            spell_id = 7457,
            name = "Enchant Bracer - Minor Stamina",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            materials = {
                { item_id = 10940, qty = 2 },
            },
            levels = { 50, 100, 120, 140 },
        },
        {
            spell_id = 7412,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 50 },
            cap = 150,
        },
    },
    [60] = {
        {
            spell_id = 7766,
            name = "Enchant Bracer - Minor Spirit",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 6344,
                },
            },
            materials = {
                { item_id = 10938, qty = 1 },
            },
            levels = { 60, 105, 125, 145 },
        },
        {
            spell_id = 7748,
            name = "Enchant Chest - Lesser Stamina",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 10938, qty = 1 },
            },
            levels = { 60, 105, 125, 145 },
        },
    },
    [70] = {
        {
            spell_id = 1248458,
            name = "Enchant Bracer - Minor Intellect",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249474,
                },
            },
            materials = {
                { item_id = 10938, qty = 1 },
            },
            levels = { 70, 110, 130, 150 },
        },
        {
            spell_id = 7771,
            name = "Enchant Cloak - Minor Protection",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 6345,
                },
                {
                    type = "Trainer",
                    cost = 200,
                },
            },
            materials = {
                { item_id = 10940, qty = 2 },
            },
            levels = { 70, 110, 130, 150 },
        },
        {
            spell_id = 14807,
            name = "Greater Magic Wand",
            categories = { "Wands" },
            icon = "inv_staff_07",
            source = {
                {
                    type = "Trainer",
                    cost = 200,
                },
            },
            product = { item_id = 11288, qty = 1 },
            materials = {
                { item_id = 4470, qty = 1 },
                { item_id = 10938, qty = 2 },
            },
            levels = { 70, 110, 130, 150 },
        },
    },
    [80] = {
        {
            spell_id = 7779,
            name = "Enchant Bracer - Minor Agility",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 10938, qty = 2 },
            },
            levels = { 80, 115, 135, 155 },
        },
        {
            spell_id = 7782,
            name = "Enchant Bracer - Minor Strength",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 6347,
                },
            },
            materials = {
                { item_id = 10940, qty = 3 },
            },
            levels = { 80, 115, 135, 155 },
        },
        {
            spell_id = 7776,
            name = "Enchant Chest - Lesser Intellect",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 6346,
                },
            },
            materials = {
                { item_id = 10938, qty = 2 },
            },
            levels = { 80, 115, 135, 155 },
        },
    },
    [90] = {
        {
            spell_id = 1248459,
            name = "Enchant Bracer - Minor Healing Power",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249475,
                },
            },
            materials = {
                { item_id = 10938, qty = 2 },
            },
            levels = { 90, 120, 140, 160 },
        },
        {
            spell_id = 7786,
            name = "Enchant Weapon - Minor Beastslayer",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 6348,
                },
            },
            materials = {
                { item_id = 10940, qty = 2 },
                { item_id = 10939, qty = 1 },
            },
            levels = { 90, 120, 140, 160 },
        },
        {
            spell_id = 7788,
            name = "Enchant Weapon - Minor Striking",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 10938, qty = 1 },
                { item_id = 10978, qty = 1 },
            },
            levels = { 90, 120, 140, 160 },
        },
    },
    [100] = {
        {
            spell_id = 7793,
            name = "Enchant 2H Weapon - Lesser Intellect",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 6349,
                    cost = 500,
                    location = "Tilli Thistlefuzz, Ironforge",
                },
            },
            materials = {
                { item_id = 10938, qty = 4 },
            },
            levels = { 100, 130, 150, 170 },
        },
        {
            spell_id = 7745,
            name = "Enchant 2H Weapon - Minor Impact",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 10978, qty = 1 },
            },
            levels = { 100, 130, 150, 170 },
        },
        {
            spell_id = 7795,
            name = "Runed Silver Rod",
            categories = { "Runed Enchanting Rods" },
            icon = "inv_staff_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 6339, qty = 1 },
            materials = {
                { item_id = 6338, qty = 1 },
                { item_id = 10940, qty = 3 },
                { item_id = 10938, qty = 4 },
                { item_id = 1210, qty = 1 },
            },
            levels = { 100, 130, 150, 170 },
        },
    },
    [105] = {
        {
            spell_id = 13378,
            name = "Enchant Shield - Minor Stamina",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10998, qty = 1 },
                { item_id = 10940, qty = 1 },
            },
            levels = { 105, 130, 150, 170 },
        },
    },
    [110] = {
        {
            spell_id = 13380,
            name = "Enchant 2H Weapon - Lesser Spirit",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11038,
                },
            },
            materials = {
                { item_id = 10998, qty = 1 },
                { item_id = 10940, qty = 3 },
            },
            levels = { 110, 135, 155, 175 },
        },
        {
            spell_id = 13419,
            name = "Enchant Cloak - Minor Agility",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11039,
                },
            },
            materials = {
                { item_id = 10998, qty = 1 },
            },
            levels = { 110, 135, 155, 175 },
        },
    },
    [115] = {
        {
            spell_id = 13421,
            name = "Enchant Cloak - Lesser Protection",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10940, qty = 3 },
                { item_id = 10978, qty = 1 },
            },
            levels = { 115, 140, 160, 180 },
        },
        {
            spell_id = 13464,
            name = "Enchant Shield - Lesser Protection",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11081,
                },
            },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 10978, qty = 1 },
            },
            levels = { 115, 140, 160, 180 },
        },
    },
    [120] = {
        {
            spell_id = 7859,
            name = "Enchant Bracer - Lesser Spirit",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 6375,
                },
            },
            materials = {
                { item_id = 10998, qty = 1 },
            },
            levels = { 120, 145, 165, 185 },
        },
        {
            spell_id = 7857,
            name = "Enchant Chest - Stamina",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10940, qty = 2 },
                { item_id = 10998, qty = 1 },
            },
            levels = { 120, 145, 165, 185 },
        },
    },
    [125] = {
        {
            spell_id = 7867,
            name = "Enchant Boots - Minor Agility",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 6377,
                    cost = 1000,
                    location = "Zixil, Hillsbrad Foothills",
                },
            },
            materials = {
                { item_id = 10940, qty = 3 },
                { item_id = 10998, qty = 1 },
            },
            levels = { 125, 150, 170, 190 },
        },
        {
            spell_id = 7863,
            name = "Enchant Boots - Minor Stamina",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 6376,
                },
            },
            materials = {
                { item_id = 10940, qty = 4 },
            },
            levels = { 125, 150, 170, 190 },
        },
        {
            spell_id = 7861,
            name = "Enchant Cloak - Lesser Fire Resistance",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 6371, qty = 1 },
                { item_id = 10998, qty = 1 },
            },
            levels = { 125, 150, 170, 190 },
        },
        {
            spell_id = 7413,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
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
            spell_id = 13501,
            name = "Enchant Bracer - Lesser Stamina",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11083, qty = 1 },
            },
            levels = { 130, 155, 175, 195 },
        },
        {
            spell_id = 13485,
            name = "Enchant Shield - Lesser Spirit",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10998, qty = 1 },
                { item_id = 10940, qty = 2 },
            },
            levels = { 130, 155, 175, 195 },
        },
        {
            spell_id = 1248752,
            name = "Mystic Mushroom",
            categories = { "Relics" },
            icon = "inv_mushroom_11",
            source = {
                {
                    type = "Vendor",
                    item_id = 249476,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            product = { item_id = 249396, qty = 1 },
            materials = {
                { item_id = 10978, qty = 1 },
                { item_id = 10939, qty = 2 },
                { item_id = 10940, qty = 5 },
                { item_id = 4605, qty = 1 },
            },
            levels = { 130, 140, 160, 180 },
        },
        {
            spell_id = 1248755,
            name = "Polished Driftwood Icon",
            categories = { "Relics" },
            icon = "spell_shaman_totemrecall",
            source = {
                {
                    type = "Vendor",
                    item_id = 249478,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            product = { item_id = 249398, qty = 1 },
            materials = {
                { item_id = 11084, qty = 1 },
                { item_id = 10939, qty = 2 },
                { item_id = 10940, qty = 3 },
                { item_id = 4470, qty = 1 },
            },
            levels = { 130, 140, 160, 180 },
        },
        {
            spell_id = 1248754,
            name = "Tenets of the Silver Hand",
            categories = { "Relics" },
            icon = "inv_misc_book_13",
            source = {
                {
                    type = "Vendor",
                    item_id = 249477,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            product = { item_id = 249397, qty = 1 },
            materials = {
                { item_id = 11084, qty = 1 },
                { item_id = 10939, qty = 1 },
                { item_id = 10940, qty = 2 },
                { item_id = 3013, qty = 5 },
            },
            levels = { 130, 140, 160, 180 },
        },
    },
    [135] = {
        {
            spell_id = 13522,
            name = "Enchant Cloak - Lesser Shadow Resistance",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11098,
                },
            },
            materials = {
                { item_id = 10998, qty = 1 },
                { item_id = 6048, qty = 1 },
            },
            levels = { 135, 160, 180, 200 },
        },
    },
    [140] = {
        {
            spell_id = 1263056,
            name = "Arcane Salvager",
            categories = { "Camping" },
            icon = "inv_eng_bottledelements",
            source = {
                {
                    type = "Item",
                    item_id = 273103,
                },
            },
            product = { item_id = 279985, qty = 1 },
            materials = {
                { item_id = 11137, qty = 2 },
                { item_id = 11174, qty = 1 },
            },
            levels = { 140, 140, 142, 145 },
        },
        {
            spell_id = 1248460,
            name = "Enchant Bracer - Lesser Agility",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249486,
                },
            },
            materials = {
                { item_id = 11134, qty = 1 },
            },
            levels = { 140, 165, 185, 205 },
        },
        {
            spell_id = 13536,
            name = "Enchant Bracer - Lesser Strength",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11101,
                },
            },
            materials = {
                { item_id = 11083, qty = 1 },
            },
            levels = { 140, 165, 185, 205 },
        },
        {
            spell_id = 13538,
            name = "Enchant Chest - Lesser Absorption",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 10998, qty = 1 },
                { item_id = 11084, qty = 1 },
            },
            levels = { 140, 165, 185, 205 },
        },
        {
            spell_id = 1248757,
            name = "Enchant Weapon - Insight",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249479,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            materials = {
                { item_id = 10940, qty = 10 },
                { item_id = 11084, qty = 4 },
                { item_id = 11082, qty = 4 },
                { item_id = 249391, qty = 4 },
                { item_id = 249399, qty = 4 },
            },
            levels = { 140, 140, 160, 180 },
        },
        {
            spell_id = 13503,
            name = "Enchant Weapon - Lesser Striking",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 11084, qty = 1 },
            },
            levels = { 140, 165, 185, 205 },
        },
        {
            spell_id = 1248760,
            name = "Enchant Weapon - Recovery",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249480,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            materials = {
                { item_id = 11083, qty = 6 },
                { item_id = 11084, qty = 4 },
                { item_id = 11082, qty = 6 },
                { item_id = 249391, qty = 4 },
                { item_id = 2775, qty = 4 },
            },
            levels = { 140, 140, 160, 180 },
        },
        {
            spell_id = 1248805,
            name = "Enchant Weapon - Revelation",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249481,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            materials = {
                { item_id = 11083, qty = 8 },
                { item_id = 11084, qty = 6 },
                { item_id = 11082, qty = 2 },
                { item_id = 249409, qty = 4 },
                { item_id = 249410, qty = 4 },
            },
            levels = { 140, 140, 160, 180 },
        },
        {
            spell_id = 1248703,
            name = "Glimmering Staff",
            categories = { "Staves" },
            icon = "inv_staff_19",
            source = {
                {
                    type = "Vendor",
                    item_id = 249482,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            product = { item_id = 249392, qty = 1 },
            materials = {
                { item_id = 11084, qty = 4 },
                { item_id = 10978, qty = 2 },
                { item_id = 11291, qty = 4 },
                { item_id = 11082, qty = 1 },
                { item_id = 10940, qty = 5 },
                { item_id = 249391, qty = 3 },
            },
            levels = { 140, 140, 160, 180 },
        },
        {
            spell_id = 1248745,
            name = "Orb of Mystic Insight",
            categories = { "Off-Hands" },
            icon = "inv_misc_orb_blue",
            source = {
                {
                    type = "Vendor",
                    item_id = 249484,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            product = { item_id = 249394, qty = 1 },
            materials = {
                { item_id = 10978, qty = 2 },
                { item_id = 11082, qty = 2 },
                { item_id = 10940, qty = 5 },
            },
            levels = { 140, 140, 160, 180 },
        },
        {
            spell_id = 1248748,
            name = "Orb of Souls",
            categories = { "Off-Hands" },
            icon = "inv_misc_orb_04",
            source = {
                {
                    type = "Vendor",
                    item_id = 249485,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            product = { item_id = 249395, qty = 1 },
            materials = {
                { item_id = 10978, qty = 2 },
                { item_id = 11082, qty = 2 },
                { item_id = 11083, qty = 2 },
            },
            levels = { 140, 140, 160, 180 },
        },
        {
            spell_id = 1248739,
            name = "Soulstaff",
            categories = { "Staves" },
            icon = "inv_staff_31",
            source = {
                {
                    type = "Vendor",
                    item_id = 249483,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                },
            },
            product = { item_id = 249393, qty = 1 },
            materials = {
                { item_id = 11084, qty = 2 },
                { item_id = 10978, qty = 1 },
                { item_id = 11291, qty = 4 },
                { item_id = 11082, qty = 1 },
                { item_id = 11083, qty = 6 },
                { item_id = 1210, qty = 2 },
            },
            levels = { 140, 140, 160, 180 },
        },
    },
    [145] = {
        {
            spell_id = 13529,
            name = "Enchant 2H Weapon - Lesser Impact",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 11084, qty = 1 },
            },
            levels = { 145, 170, 190, 210 },
        },
        {
            spell_id = 13607,
            name = "Enchant Chest - Intellect",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11082, qty = 1 },
            },
            levels = { 145, 170, 190, 210 },
        },
        {
            spell_id = 13620,
            name = "Enchant Gloves - Fishing",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11152,
                },
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 6370, qty = 1 },
            },
            levels = { 145, 170, 190, 210 },
        },
        {
            spell_id = 13617,
            name = "Enchant Gloves - Herbalism",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11151,
                },
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 3356, qty = 1 },
            },
            levels = { 145, 170, 190, 210 },
        },
        {
            spell_id = 13612,
            name = "Enchant Gloves - Mining",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11150,
                },
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 2772, qty = 1 },
            },
            levels = { 145, 170, 190, 210 },
        },
    },
    [150] = {
        {
            spell_id = 13622,
            name = "Enchant Bracer - Lesser Intellect",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11082, qty = 1 },
            },
            levels = { 150, 175, 195, 215 },
        },
        {
            spell_id = 13626,
            name = "Enchant Chest - Minor Stats",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 10998, qty = 1 },
                { item_id = 11083, qty = 1 },
                { item_id = 11084, qty = 1 },
            },
            levels = { 150, 175, 195, 215 },
        },
        {
            spell_id = 25125,
            name = "Minor Mana Oil",
            categories = { "Wizard Oils" },
            icon = "inv_potion_98",
            source = {
                {
                    type = "Vendor",
                    item_id = 20752,
                    cost = 3000,
                    location = "Jessara Cordell, Stormwind City",
                },
                {
                    type = "Vendor",
                    item_id = 20752,
                    cost = 3000,
                    location = "Vaean, Darnassus",
                },
                {
                    type = "Vendor",
                    item_id = 20752,
                    cost = 3000,
                    location = "Tilli Thistlefuzz, Ironforge",
                },
            },
            product = { item_id = 20745, qty = 1 },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 17034, qty = 2 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 150, 160, 170, 180 },
        },
        {
            spell_id = 13628,
            name = "Runed Golden Rod",
            categories = { "Runed Enchanting Rods" },
            icon = "inv_staff_10",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 11130, qty = 1 },
            materials = {
                { item_id = 11128, qty = 1 },
                { item_id = 5500, qty = 1 },
                { item_id = 11082, qty = 1 },
                { item_id = 11083, qty = 1 },
            },
            levels = { 150, 175, 195, 215 },
        },
    },
    [155] = {
        {
            spell_id = 13635,
            name = "Enchant Cloak - Defense",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11138, qty = 1 },
                { item_id = 11083, qty = 1 },
            },
            levels = { 155, 175, 195, 215 },
        },
        {
            spell_id = 13631,
            name = "Enchant Shield - Lesser Stamina",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11134, qty = 1 },
            },
            levels = { 155, 175, 195, 215 },
        },
        {
            spell_id = 14809,
            name = "Lesser Mystic Wand",
            categories = { "Wands" },
            icon = "inv_staff_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 11289, qty = 1 },
            materials = {
                { item_id = 11291, qty = 1 },
                { item_id = 11134, qty = 1 },
            },
            levels = { 155, 175, 195, 215 },
        },
    },
    [160] = {
        {
            spell_id = 13637,
            name = "Enchant Boots - Lesser Agility",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11083, qty = 1 },
            },
            levels = { 160, 180, 200, 220 },
        },
        {
            spell_id = 13640,
            name = "Enchant Chest - Greater Stamina",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11083, qty = 2 },
            },
            levels = { 160, 180, 200, 220 },
        },
    },
    [165] = {
        {
            spell_id = 13642,
            name = "Enchant Bracer - Spirit",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11134, qty = 1 },
            },
            levels = { 165, 185, 205, 225 },
        },
    },
    [170] = {
        {
            spell_id = 13644,
            name = "Enchant Boots - Lesser Stamina",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11083, qty = 2 },
            },
            levels = { 170, 190, 210, 230 },
        },
        {
            spell_id = 13646,
            name = "Enchant Bracer - Lesser Deflection",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11163,
                },
            },
            materials = {
                { item_id = 11134, qty = 1 },
                { item_id = 11083, qty = 1 },
            },
            levels = { 170, 190, 210, 230 },
        },
        {
            spell_id = 13648,
            name = "Enchant Bracer - Stamina",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11083, qty = 3 },
            },
            levels = { 170, 190, 210, 230 },
        },
    },
    [175] = {
        {
            spell_id = 13657,
            name = "Enchant Cloak - Fire Resistance",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11134, qty = 1 },
                { item_id = 7068, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
        {
            spell_id = 13653,
            name = "Enchant Weapon - Lesser Beastslayer",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11164,
                },
            },
            materials = {
                { item_id = 5637, qty = 1 },
                { item_id = 11138, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
        {
            spell_id = 13655,
            name = "Enchant Weapon - Lesser Elemental Slayer",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11165,
                },
            },
            materials = {
                { item_id = 7067, qty = 1 },
                { item_id = 11138, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
        {
            spell_id = 14810,
            name = "Greater Mystic Wand",
            categories = { "Wands" },
            icon = "inv_wand_07",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 217287, qty = 1 },
            materials = {
                { item_id = 11291, qty = 1 },
                { item_id = 11134, qty = 1 },
                { item_id = 11137, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
    },
    [180] = {
        {
            spell_id = 13661,
            name = "Enchant Bracer - Strength",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11137, qty = 1 },
            },
            levels = { 180, 200, 220, 240 },
        },
        {
            spell_id = 13659,
            name = "Enchant Shield - Spirit",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11134, qty = 1 },
                { item_id = 11137, qty = 1 },
            },
            levels = { 180, 200, 220, 240 },
        },
    },
    [185] = {
        {
            spell_id = 13663,
            name = "Enchant Chest - Greater Intellect",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11134, qty = 1 },
            },
            levels = { 185, 205, 225, 245 },
        },
        {
            spell_id = 1248461,
            name = "Twisted Nether Wand",
            categories = { "Wands" },
            icon = "inv_wand_03",
            source = {
                {
                    type = "Item",
                    item_id = 249487,
                },
            },
            product = { item_id = 249144, qty = 1 },
            materials = {
                { item_id = 11174, qty = 1 },
                { item_id = 11176, qty = 1 },
                { item_id = 11291, qty = 1 },
            },
            levels = { 185, 205, 225, 245 },
        },
    },
    [190] = {
        {
            spell_id = 13687,
            name = "Enchant Boots - Lesser Spirit",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11167,
                },
            },
            materials = {
                { item_id = 11134, qty = 2 },
            },
            levels = { 190, 210, 230, 250 },
        },
        {
            spell_id = 1248497,
            name = "Enchant Bracer - Agility",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249488,
                },
            },
            materials = {
                { item_id = 11137, qty = 1 },
            },
            levels = { 190, 225, 245, 265 },
        },
        {
            spell_id = 21931,
            name = "Enchant Weapon - Winter's Might",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 17725,
                },
            },
            materials = {
                { item_id = 11135, qty = 1 },
                { item_id = 11137, qty = 1 },
                { item_id = 11139, qty = 1 },
                { item_id = 3819, qty = 1 },
            },
            levels = { 190, 210, 230, 250 },
        },
    },
    [195] = {
        {
            spell_id = 13689,
            name = "Enchant Shield - Lesser Block",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11168,
                },
            },
            materials = {
                { item_id = 11135, qty = 1 },
                { item_id = 11137, qty = 1 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 195, 215, 235, 255 },
        },
        {
            spell_id = 13693,
            name = "Enchant Weapon - Striking",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11135, qty = 1 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 195, 215, 235, 255 },
        },
    },
    [200] = {
        {
            spell_id = 13695,
            name = "Enchant 2H Weapon - Impact",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11137, qty = 2 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 13700,
            name = "Enchant Chest - Lesser Stats",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11135, qty = 1 },
                { item_id = 11137, qty = 1 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 13698,
            name = "Enchant Gloves - Skinning",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11166,
                },
            },
            materials = {
                { item_id = 11137, qty = 1 },
                { item_id = 7392, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 25126,
            name = "Lesser Wizard Oil",
            categories = { "Wizard Oils" },
            icon = "inv_potion_103",
            source = {
                {
                    type = "Vendor",
                    item_id = 20753,
                    cost = 4000,
                    location = "Jessara Cordell, Stormwind City",
                },
                {
                    type = "Vendor",
                    item_id = 20753,
                    cost = 4000,
                    location = "Vaean, Darnassus",
                },
                {
                    type = "Vendor",
                    item_id = 20753,
                    cost = 4000,
                    location = "Tilli Thistlefuzz, Ironforge",
                },
            },
            product = { item_id = 20746, qty = 1 },
            materials = {
                { item_id = 11137, qty = 1 },
                { item_id = 17035, qty = 2 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 200, 210, 220, 230 },
        },
        {
            spell_id = 13702,
            name = "Runed Truesilver Rod",
            categories = { "Runed Enchanting Rods" },
            icon = "inv_staff_11",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 11145, qty = 1 },
            materials = {
                { item_id = 11144, qty = 1 },
                { item_id = 7971, qty = 1 },
                { item_id = 11135, qty = 1 },
                { item_id = 11137, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 13920,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 200 },
            cap = 300,
        },
    },
    [205] = {
        {
            spell_id = 1248498,
            name = "Enchant Bracer - Lesser Healing Power",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249489,
                },
            },
            materials = {
                { item_id = 11134, qty = 2 },
            },
            levels = { 205, 225, 245, 265 },
        },
        {
            spell_id = 13746,
            name = "Enchant Cloak - Greater Defense",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11137, qty = 1 },
            },
            levels = { 205, 225, 245, 265 },
        },
        {
            spell_id = 13794,
            name = "Enchant Cloak - Resistance",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11174, qty = 1 },
            },
            levels = { 205, 225, 245, 265 },
        },
    },
    [210] = {
        {
            spell_id = 1248510,
            name = "Enchant 2H Weapon - Lesser Agility",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249511,
                },
            },
            materials = {
                { item_id = 11137, qty = 2 },
                { item_id = 11139, qty = 1 },
                { item_id = 11174, qty = 1 },
            },
            levels = { 210, 230, 250, 270 },
        },
        {
            spell_id = 13822,
            name = "Enchant Bracer - Intellect",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11174, qty = 1 },
            },
            levels = { 210, 230, 250, 270 },
        },
        {
            spell_id = 13815,
            name = "Enchant Gloves - Agility",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11137, qty = 1 },
            },
            levels = { 210, 230, 250, 270 },
        },
        {
            spell_id = 1249059,
            name = "Enchant Necklace - Agility",
            categories = { "Amulet Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249504,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            materials = {
                { item_id = 11175, qty = 2 },
                { item_id = 11178, qty = 8 },
                { item_id = 11176, qty = 6 },
                { item_id = 249410, qty = 4 },
                { item_id = 249430, qty = 4 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 1249060,
            name = "Enchant Necklace - Deflection",
            categories = { "Amulet Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249505,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            materials = {
                { item_id = 11175, qty = 8 },
                { item_id = 11178, qty = 2 },
                { item_id = 11176, qty = 2 },
                { item_id = 249409, qty = 4 },
                { item_id = 249430, qty = 4 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 1249058,
            name = "Enchant Necklace - Healing Power",
            categories = { "Amulet Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249503,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            materials = {
                { item_id = 11175, qty = 3 },
                { item_id = 11178, qty = 5 },
                { item_id = 11176, qty = 4 },
                { item_id = 249391, qty = 4 },
                { item_id = 249424, qty = 4 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 1249057,
            name = "Enchant Necklace - Spell Power",
            categories = { "Amulet Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249502,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            materials = {
                { item_id = 11175, qty = 5 },
                { item_id = 11178, qty = 3 },
                { item_id = 11176, qty = 8 },
                { item_id = 249409, qty = 4 },
                { item_id = 249430, qty = 4 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 1249019,
            name = "Enchant Necklace - Strength",
            categories = { "Amulet Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249496,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            materials = {
                { item_id = 11175, qty = 4 },
                { item_id = 11178, qty = 4 },
                { item_id = 11176, qty = 10 },
                { item_id = 249410, qty = 4 },
                { item_id = 249425, qty = 4 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 13817,
            name = "Enchant Shield - Stamina",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11202,
                },
            },
            materials = {
                { item_id = 11137, qty = 2 },
            },
            levels = { 210, 230, 250, 270 },
        },
        {
            spell_id = 1249006,
            name = "Libram of Invocation",
            categories = { "Relics" },
            icon = "inv_relics_libramofhope",
            source = {
                {
                    type = "Vendor",
                    item_id = 249494,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249442, qty = 1 },
            materials = {
                { item_id = 11178, qty = 3 },
                { item_id = 11175, qty = 3 },
                { item_id = 11176, qty = 4 },
                { item_id = 249430, qty = 2 },
                { item_id = 249409, qty = 1 },
                { item_id = 2289, qty = 4 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 1248974,
            name = "Talons of Wrath",
            categories = { "Relics" },
            icon = "spell_nature_natureswrath",
            source = {
                {
                    type = "Vendor",
                    item_id = 249493,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249441, qty = 1 },
            materials = {
                { item_id = 11178, qty = 2 },
                { item_id = 11175, qty = 4 },
                { item_id = 11176, qty = 6 },
                { item_id = 249430, qty = 2 },
                { item_id = 249409, qty = 1 },
                { item_id = 11291, qty = 1 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 1249015,
            name = "Totem of Ancestral Protection",
            categories = { "Relics" },
            icon = "inv_relics_totemofrage",
            source = {
                {
                    type = "Vendor",
                    item_id = 249495,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249443, qty = 1 },
            materials = {
                { item_id = 11178, qty = 4 },
                { item_id = 11175, qty = 2 },
                { item_id = 11176, qty = 2 },
                { item_id = 249432, qty = 4 },
                { item_id = 249410, qty = 2 },
                { item_id = 11291, qty = 2 },
            },
            levels = { 210, 225, 245, 265 },
        },
    },
    [215] = {
        {
            spell_id = 1248509,
            name = "Dreambough Wand",
            categories = { "Wands" },
            icon = "inv_wand_04",
            source = {
                {
                    type = "Item",
                    item_id = 249512,
                },
            },
            product = { item_id = 249234, qty = 1 },
            materials = {
                { item_id = 11174, qty = 2 },
                { item_id = 11137, qty = 1 },
                { item_id = 11291, qty = 1 },
            },
            levels = { 215, 235, 255, 275 },
        },
        {
            spell_id = 13836,
            name = "Enchant Boots - Stamina",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11137, qty = 2 },
            },
            levels = { 215, 235, 255, 275 },
        },
        {
            spell_id = 13841,
            name = "Enchant Gloves - Advanced Mining",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11203,
                },
            },
            materials = {
                { item_id = 11137, qty = 2 },
                { item_id = 6037, qty = 1 },
            },
            levels = { 215, 235, 255, 275 },
        },
    },
    [220] = {
        {
            spell_id = 1249064,
            name = "Dreamstaff",
            categories = { "Staves" },
            icon = "inv_staff_14",
            source = {
                {
                    type = "Vendor",
                    item_id = 249507,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249454, qty = 1 },
            materials = {
                { item_id = 11178, qty = 4 },
                { item_id = 11177, qty = 4 },
                { item_id = 11291, qty = 4 },
                { item_id = 11175, qty = 6 },
                { item_id = 11176, qty = 8 },
                { item_id = 249409, qty = 2 },
                { item_id = 249430, qty = 4 },
            },
            levels = { 220, 225, 245, 265 },
        },
        {
            spell_id = 1248511,
            name = "Enchant 2H Weapon - Lesser Strength",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249513,
                },
            },
            materials = {
                { item_id = 11137, qty = 1 },
                { item_id = 11139, qty = 1 },
                { item_id = 11174, qty = 2 },
            },
            levels = { 220, 240, 260, 280 },
        },
        {
            spell_id = 13846,
            name = "Enchant Bracer - Greater Spirit",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11204,
                },
            },
            materials = {
                { item_id = 11174, qty = 1 },
                { item_id = 11137, qty = 1 },
            },
            levels = { 220, 240, 260, 280 },
        },
        {
            spell_id = 1249071,
            name = "Enchant Chest - Absorption",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249510,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            materials = {
                { item_id = 11176, qty = 10 },
                { item_id = 11175, qty = 4 },
                { item_id = 11178, qty = 2 },
            },
            levels = { 220, 225, 245, 265 },
        },
        {
            spell_id = 13858,
            name = "Enchant Chest - Superior Stamina",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11137, qty = 3 },
            },
            levels = { 220, 240, 260, 280 },
        },
        {
            spell_id = 1249061,
            name = "Radiant Staff",
            categories = { "Staves" },
            icon = "inv_staff_13",
            source = {
                {
                    type = "Vendor",
                    item_id = 249506,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249453, qty = 1 },
            materials = {
                { item_id = 11178, qty = 6 },
                { item_id = 11177, qty = 2 },
                { item_id = 11291, qty = 4 },
                { item_id = 11175, qty = 4 },
                { item_id = 11176, qty = 6 },
                { item_id = 249409, qty = 2 },
                { item_id = 249430, qty = 4 },
            },
            levels = { 220, 225, 245, 265 },
        },
        {
            spell_id = 1249069,
            name = "Truesilver Conduit",
            categories = { "Off-Hands" },
            icon = "inv_rod_enchantedadamantite",
            source = {
                {
                    type = "Vendor",
                    item_id = 249508,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249455, qty = 1 },
            materials = {
                { item_id = 11178, qty = 3 },
                { item_id = 11177, qty = 1 },
                { item_id = 11291, qty = 2 },
                { item_id = 11175, qty = 2 },
                { item_id = 11176, qty = 3 },
                { item_id = 249409, qty = 1 },
                { item_id = 249430, qty = 2 },
            },
            levels = { 220, 225, 245, 265 },
        },
        {
            spell_id = 1249070,
            name = "Twisting Essence Jar",
            categories = { "Off-Hands" },
            icon = "inv_10_misc_dragonorb_color1",
            source = {
                {
                    type = "Vendor",
                    item_id = 249509,
                    currencies = {
                        { currency_id = 3402, qty = 120, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 249456, qty = 1 },
            materials = {
                { item_id = 6037, qty = 4 },
                { item_id = 11175, qty = 12 },
                { item_id = 11135, qty = 12 },
                { item_id = 249409, qty = 1 },
                { item_id = 249430, qty = 2 },
            },
            levels = { 220, 225, 245, 265 },
        },
    },
    [225] = {
        {
            spell_id = 13890,
            name = "Enchant Boots - Minor Speed",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11177, qty = 1 },
                { item_id = 7909, qty = 1 },
                { item_id = 11174, qty = 1 },
            },
            levels = { 225, 245, 265, 285 },
        },
        {
            spell_id = 13882,
            name = "Enchant Cloak - Lesser Agility",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11206,
                },
            },
            materials = {
                { item_id = 11174, qty = 1 },
            },
            levels = { 225, 245, 265, 285 },
        },
        {
            spell_id = 13868,
            name = "Enchant Gloves - Advanced Herbalism",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11205,
                },
            },
            materials = {
                { item_id = 11137, qty = 2 },
                { item_id = 8838, qty = 1 },
            },
            levels = { 225, 245, 265, 285 },
        },
        {
            spell_id = 13887,
            name = "Enchant Gloves - Strength",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11174, qty = 1 },
                { item_id = 11137, qty = 2 },
            },
            levels = { 225, 245, 265, 285 },
        },
    },
    [230] = {
        {
            spell_id = 13917,
            name = "Enchant Chest - Superior Intellect",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11175, qty = 1 },
            },
            levels = { 230, 250, 270, 290 },
        },
        {
            spell_id = 13905,
            name = "Enchant Shield - Greater Spirit",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11174, qty = 2 },
                { item_id = 11176, qty = 1 },
            },
            levels = { 230, 250, 270, 290 },
        },
        {
            spell_id = 13915,
            name = "Enchant Weapon - Demonslaying",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11208,
                },
            },
            materials = {
                { item_id = 11177, qty = 1 },
                { item_id = 11176, qty = 1 },
                { item_id = 9224, qty = 1 },
            },
            levels = { 230, 250, 270, 290 },
        },
    },
    [235] = {
        {
            spell_id = 13935,
            name = "Enchant Boots - Agility",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11175, qty = 1 },
            },
            levels = { 235, 255, 275, 295 },
        },
        {
            spell_id = 13931,
            name = "Enchant Bracer - Deflection",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 11223,
                    cost = 5800,
                    location = "Mythrin'dir, Darnassus",
                },
            },
            materials = {
                { item_id = 11174, qty = 2 },
                { item_id = 11176, qty = 1 },
            },
            levels = { 235, 255, 275, 295 },
        },
        {
            spell_id = 13933,
            name = "Enchant Shield - Frost Resistance",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11224,
                },
            },
            materials = {
                { item_id = 11178, qty = 1 },
                { item_id = 3829, qty = 1 },
            },
            levels = { 235, 255, 275, 295 },
        },
    },
    [240] = {
        {
            spell_id = 13937,
            name = "Enchant 2H Weapon - Greater Impact",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11178, qty = 1 },
                { item_id = 11176, qty = 1 },
            },
            levels = { 240, 260, 280, 300 },
        },
        {
            spell_id = 1248500,
            name = "Enchant Bracer - Greater Agility",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249514,
                },
            },
            materials = {
                { item_id = 11176, qty = 3 },
                { item_id = 11174, qty = 1 },
            },
            levels = { 240, 260, 280, 300 },
        },
        {
            spell_id = 13939,
            name = "Enchant Bracer - Greater Strength",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11176, qty = 1 },
                { item_id = 11174, qty = 2 },
            },
            levels = { 240, 260, 280, 300 },
        },
    },
    [245] = {
        {
            spell_id = 13945,
            name = "Enchant Bracer - Greater Stamina",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11225,
                },
            },
            materials = {
                { item_id = 11176, qty = 3 },
            },
            levels = { 245, 265, 285, 305 },
        },
        {
            spell_id = 13941,
            name = "Enchant Chest - Stats",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11178, qty = 1 },
                { item_id = 11176, qty = 1 },
                { item_id = 11175, qty = 1 },
            },
            levels = { 245, 265, 285, 305 },
        },
        {
            spell_id = 13943,
            name = "Enchant Weapon - Greater Striking",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11178, qty = 1 },
                { item_id = 11175, qty = 1 },
            },
            levels = { 245, 265, 285, 305 },
        },
        {
            spell_id = 1248505,
            name = "Lesser Eternal Wand",
            categories = { "Wands" },
            icon = "inv_wand_05",
            source = {
                {
                    type = "Item",
                    item_id = 249515,
                },
            },
            product = { item_id = 249232, qty = 1 },
            materials = {
                { item_id = 16202, qty = 1 },
                { item_id = 11176, qty = 1 },
                { item_id = 11291, qty = 1 },
            },
            levels = { 245, 265, 285, 305 },
        },
    },
    [250] = {
        {
            spell_id = 1248528,
            name = "Enchant Gloves - Advanced Skinning",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249516,
                },
            },
            materials = {
                { item_id = 11176, qty = 2 },
                { item_id = 15407, qty = 1 },
            },
            levels = { 250, 270, 290, 310 },
        },
        {
            spell_id = 13948,
            name = "Enchant Gloves - Minor Haste",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Trainer",
                },
            },
            materials = {
                { item_id = 11178, qty = 1 },
                { item_id = 8153, qty = 1 },
            },
            levels = { 250, 270, 290, 310 },
        },
        {
            spell_id = 13947,
            name = "Enchant Gloves - Riding Skill",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11226,
                },
            },
            materials = {
                { item_id = 11178, qty = 1 },
                { item_id = 11176, qty = 2 },
            },
            levels = { 250, 270, 290, 310 },
        },
        {
            spell_id = 17181,
            name = "Enchanted Leather",
            categories = { "Reagents" },
            icon = "inv_misc_rune_05",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 12810, qty = 1 },
            materials = {
                { item_id = 8170, qty = 1 },
                { item_id = 16202, qty = 1 },
            },
            levels = { 250, 250, 255, 260 },
        },
        {
            spell_id = 17180,
            name = "Enchanted Thorium",
            categories = { "Reagents" },
            icon = "inv_ingot_eternium",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 12655, qty = 1 },
            materials = {
                { item_id = 12359, qty = 1 },
                { item_id = 11176, qty = 3 },
            },
            levels = { 250, 250, 255, 260 },
        },
        {
            spell_id = 25127,
            name = "Lesser Mana Oil",
            categories = { "Wizard Oils" },
            icon = "inv_potion_99",
            source = {
                {
                    type = "Item",
                    item_id = 20754,
                },
            },
            product = { item_id = 20747, qty = 1 },
            materials = {
                { item_id = 11176, qty = 1 },
                { item_id = 8831, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 250, 260, 270, 280 },
        },
    },
    [255] = {
        {
            spell_id = 20008,
            name = "Enchant Bracer - Greater Intellect",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16214,
                },
            },
            materials = {
                { item_id = 16202, qty = 2 },
            },
            levels = { 255, 275, 295, 315 },
        },
    },
    [260] = {
        {
            spell_id = 20020,
            name = "Enchant Boots - Greater Stamina",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16215,
                },
            },
            materials = {
                { item_id = 11176, qty = 6 },
            },
            levels = { 260, 280, 300, 320 },
        },
    },
    [265] = {
        {
            spell_id = 20014,
            name = "Enchant Cloak - Greater Resistance",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16216,
                },
            },
            materials = {
                { item_id = 16202, qty = 1 },
                { item_id = 7077, qty = 1 },
                { item_id = 7075, qty = 1 },
                { item_id = 7079, qty = 1 },
                { item_id = 7081, qty = 1 },
                { item_id = 7972, qty = 1 },
            },
            levels = { 265, 285, 305, 325 },
        },
        {
            spell_id = 20017,
            name = "Enchant Shield - Greater Stamina",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 16217,
                    cost = 12000,
                    location = "Mythrin'dir, Darnassus",
                },
            },
            materials = {
                { item_id = 11176, qty = 6 },
            },
            levels = { 265, 285, 305, 325 },
        },
        {
            spell_id = 13898,
            name = "Enchant Weapon - Fiery Weapon",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 11207,
                },
            },
            materials = {
                { item_id = 11177, qty = 2 },
                { item_id = 7078, qty = 1 },
            },
            levels = { 265, 285, 305, 325 },
        },
        {
            spell_id = 15596,
            name = "Smoking Heart of the Mountain",
            categories = { "Curios" },
            icon = "inv_misc_gem_bloodstone_01",
            source = {
                {
                    type = "Item",
                    item_id = 11813,
                },
            },
            product = { item_id = 11811, qty = 1 },
            materials = {
                { item_id = 11382, qty = 1 },
                { item_id = 7078, qty = 1 },
                { item_id = 14343, qty = 3 },
            },
            levels = { 265, 285, 305, 325 },
        },
    },
    [270] = {
        {
            spell_id = 20009,
            name = "Enchant Bracer - Superior Spirit",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16218,
                },
            },
            materials = {
                { item_id = 16202, qty = 2 },
                { item_id = 11176, qty = 7 },
            },
            levels = { 270, 290, 310, 330 },
        },
        {
            spell_id = 20012,
            name = "Enchant Gloves - Greater Agility",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16219,
                },
            },
            materials = {
                { item_id = 16202, qty = 2 },
                { item_id = 16204, qty = 2 },
            },
            levels = { 270, 290, 310, 330 },
        },
    },
    [275] = {
        {
            spell_id = 1248650,
            name = "Brilliant Wand",
            categories = { "Wands" },
            icon = "inv_wand_07",
            source = {
                {
                    type = "Vendor",
                    item_id = 249537,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 249385, qty = 1 },
            materials = {
                { item_id = 16203, qty = 1 },
                { item_id = 16204, qty = 3 },
                { item_id = 14344, qty = 2 },
                { item_id = 11291, qty = 1 },
            },
            levels = { 275, 320, 340, 360 },
        },
        {
            spell_id = 20024,
            name = "Enchant Boots - Spirit",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16220,
                },
            },
            materials = {
                { item_id = 16203, qty = 2 },
                { item_id = 16202, qty = 1 },
            },
            levels = { 275, 295, 315, 335 },
        },
        {
            spell_id = 20026,
            name = "Enchant Chest - Major Stamina",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16221,
                },
            },
            materials = {
                { item_id = 16204, qty = 6 },
                { item_id = 14343, qty = 1 },
            },
            levels = { 275, 295, 315, 335 },
        },
        {
            spell_id = 1248515,
            name = "Greater Eternal Wand",
            categories = { "Wands" },
            icon = "inv_wand_14",
            source = {
                {
                    type = "Item",
                    item_id = 249522,
                },
            },
            product = { item_id = 249237, qty = 1 },
            materials = {
                { item_id = 16203, qty = 2 },
                { item_id = 16204, qty = 1 },
                { item_id = 11291, qty = 1 },
            },
            levels = { 275, 285, 295, 305 },
        },
        {
            spell_id = 25128,
            name = "Wizard Oil",
            categories = { "Wizard Oils" },
            icon = "inv_potion_104",
            source = {
                {
                    type = "Item",
                    item_id = 20755,
                },
            },
            product = { item_id = 20750, qty = 1 },
            materials = {
                { item_id = 16204, qty = 3 },
                { item_id = 4625, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 275, 285, 295, 305 },
        },
    },
    [280] = {
        {
            spell_id = 20016,
            name = "Enchant Shield - Superior Spirit",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16222,
                },
            },
            materials = {
                { item_id = 16203, qty = 2 },
                { item_id = 16204, qty = 4 },
            },
            levels = { 280, 300, 320, 340 },
        },
    },
    [285] = {
        {
            spell_id = 20015,
            name = "Enchant Cloak - Superior Defense",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16224,
                },
            },
            materials = {
                { item_id = 16204, qty = 8 },
            },
            levels = { 285, 305, 325, 345 },
        },
        {
            spell_id = 20029,
            name = "Enchant Weapon - Icy Chill",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16223,
                },
            },
            materials = {
                { item_id = 14343, qty = 4 },
                { item_id = 7080, qty = 1 },
                { item_id = 7082, qty = 1 },
                { item_id = 13467, qty = 1 },
            },
            levels = { 285, 305, 325, 345 },
        },
    },
    [290] = {
        {
            spell_id = 27837,
            name = "Enchant 2H Weapon - Agility",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 22392,
                },
            },
            materials = {
                { item_id = 14344, qty = 10 },
                { item_id = 16203, qty = 6 },
                { item_id = 16204, qty = 14 },
                { item_id = 7082, qty = 4 },
            },
            levels = { 290, 310, 330, 350 },
        },
        {
            spell_id = 1248668,
            name = "Enchant 2H Weapon - Strength",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249523,
                },
            },
            materials = {
                { item_id = 14344, qty = 8 },
                { item_id = 16203, qty = 10 },
                { item_id = 16204, qty = 8 },
                { item_id = 12363, qty = 4 },
            },
            levels = { 290, 290, 295, 300 },
        },
        {
            spell_id = 23801,
            name = "Enchant Bracer - Mana Regeneration",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 19446,
                },
            },
            materials = {
                { item_id = 16204, qty = 16 },
                { item_id = 16203, qty = 4 },
                { item_id = 7080, qty = 2 },
            },
            levels = { 290, 310, 330, 350 },
        },
        {
            spell_id = 20028,
            name = "Enchant Chest - Major Intellect",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16242,
                },
            },
            materials = {
                { item_id = 16203, qty = 3 },
                { item_id = 14343, qty = 1 },
            },
            levels = { 290, 310, 330, 350 },
        },
        {
            spell_id = 23800,
            name = "Enchant Weapon - Agility",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 19445,
                },
            },
            materials = {
                { item_id = 14344, qty = 6 },
                { item_id = 16203, qty = 6 },
                { item_id = 16204, qty = 4 },
                { item_id = 7082, qty = 2 },
            },
            levels = { 290, 310, 330, 350 },
        },
        {
            spell_id = 23799,
            name = "Enchant Weapon - Strength",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 19444,
                },
            },
            materials = {
                { item_id = 14344, qty = 6 },
                { item_id = 16203, qty = 6 },
                { item_id = 16204, qty = 4 },
                { item_id = 7076, qty = 2 },
            },
            levels = { 290, 310, 330, 350 },
        },
        {
            spell_id = 20051,
            name = "Runed Arcanite Rod",
            categories = { "Runed Enchanting Rods" },
            icon = "inv_wand_09",
            source = {
                {
                    type = "Item",
                    item_id = 16243,
                },
            },
            product = { item_id = 16207, qty = 1 },
            materials = {
                { item_id = 16206, qty = 1 },
                { item_id = 13926, qty = 1 },
                { item_id = 16204, qty = 10 },
                { item_id = 16203, qty = 4 },
                { item_id = 14343, qty = 4 },
                { item_id = 14344, qty = 2 },
            },
            levels = { 290, 310, 330, 350 },
        },
    },
    [295] = {
        {
            spell_id = 20030,
            name = "Enchant 2H Weapon - Superior Impact",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16247,
                },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16204, qty = 10 },
            },
            levels = { 295, 315, 335, 355 },
        },
        {
            spell_id = 20023,
            name = "Enchant Boots - Greater Agility",
            categories = { "Boots Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16245,
                },
            },
            materials = {
                { item_id = 16203, qty = 8 },
            },
            levels = { 295, 315, 335, 355 },
        },
        {
            spell_id = 1248599,
            name = "Enchant Bracer - Superior Agility",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 249524,
                },
            },
            materials = {
                { item_id = 16204, qty = 3 },
                { item_id = 16203, qty = 3 },
                { item_id = 14344, qty = 1 },
            },
            levels = { 295, 315, 335, 355 },
        },
        {
            spell_id = 20010,
            name = "Enchant Bracer - Superior Strength",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16246,
                },
            },
            materials = {
                { item_id = 16204, qty = 6 },
                { item_id = 16203, qty = 6 },
            },
            levels = { 295, 315, 335, 355 },
        },
        {
            spell_id = 20013,
            name = "Enchant Gloves - Greater Strength",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16244,
                },
            },
            materials = {
                { item_id = 16203, qty = 4 },
                { item_id = 16204, qty = 4 },
            },
            levels = { 295, 315, 335, 355 },
        },
        {
            spell_id = 1294054,
            name = "Enchant Gloves - Lotus Claw",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 274424,
                },
            },
            materials = {
                { item_id = 248822, qty = 1 },
                { item_id = 14343, qty = 2 },
                { item_id = 16204, qty = 12 },
                { item_id = 16202, qty = 4 },
            },
            levels = { 295, 285, 287, 290 },
        },
        {
            spell_id = 20033,
            name = "Enchant Weapon - Unholy Weapon",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16248,
                },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 12808, qty = 4 },
            },
            levels = { 295, 315, 335, 355 },
        },
    },
    [300] = {
        {
            spell_id = 1263082,
            name = "Arcane Forge",
            categories = { "Camping" },
            icon = "inv_enchanting_modifiedcraftingreagent_indigo",
            source = {
                {
                    type = "Item",
                    item_id = 273116,
                },
            },
            product = { item_id = 279987, qty = 1 },
            materials = {
                { item_id = 273128, qty = 1 },
                { item_id = 14344, qty = 2 },
                { item_id = 16203, qty = 4 },
            },
            levels = { 300, 300, 300, 300 },
        },
        {
            spell_id = 25130,
            name = "Brilliant Mana Oil",
            categories = { "Wizard Oils" },
            icon = "inv_potion_100",
            source = {
                {
                    type = "Item",
                    item_id = 20757,
                },
            },
            product = { item_id = 20748, qty = 1 },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 8831, qty = 3 },
                { item_id = 18256, qty = 1 },
            },
            levels = { 300, 310, 320, 330 },
        },
        {
            spell_id = 25129,
            name = "Brilliant Wizard Oil",
            categories = { "Wizard Oils" },
            icon = "inv_potion_105",
            source = {
                {
                    type = "Item",
                    item_id = 20756,
                },
            },
            product = { item_id = 20749, qty = 1 },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 4625, qty = 3 },
                { item_id = 18256, qty = 1 },
            },
            levels = { 300, 310, 320, 330 },
        },
        {
            spell_id = 20036,
            name = "Enchant 2H Weapon - Major Intellect",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16249,
                },
            },
            materials = {
                { item_id = 16203, qty = 12 },
                { item_id = 14344, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 20035,
            name = "Enchant 2H Weapon - Major Spirit",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16255,
                },
            },
            materials = {
                { item_id = 16203, qty = 12 },
                { item_id = 14344, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1248636,
            name = "Enchant 2H Weapon - Mighty Healing Power",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249526,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 248819, qty = 4 },
                { item_id = 16203, qty = 6 },
                { item_id = 249726, qty = 4 },
                { item_id = 249274, qty = 4 },
                { item_id = 20725, qty = 4 },
                { item_id = 248820, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1248607,
            name = "Enchant 2H Weapon - Mighty Spell Power",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249525,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 248819, qty = 4 },
                { item_id = 16203, qty = 6 },
                { item_id = 7076, qty = 4 },
                { item_id = 12808, qty = 4 },
                { item_id = 20725, qty = 4 },
                { item_id = 248820, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1219580,
            name = "Enchant 2H Weapon - Spellblasting",
            categories = { "Two-Handed Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 274394,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 16204, qty = 24 },
                { item_id = 12938, qty = 1 },
                { item_id = 8831, qty = 6 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1220624,
            name = "Enchant Bracer - Greater Spellpower",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 274401,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 16203, qty = 3 },
                { item_id = 16204, qty = 9 },
                { item_id = 12808, qty = 12 },
                { item_id = 8831, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 23802,
            name = "Enchant Bracer - Healing Power",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 19447,
                },
            },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 16204, qty = 20 },
                { item_id = 16203, qty = 4 },
                { item_id = 12803, qty = 6 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1248665,
            name = "Enchant Bracer - Superior Deflection",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249539,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 14344, qty = 3 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1248661,
            name = "Enchant Bracer - Superior Intellect",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249538,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 16203, qty = 10 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 20011,
            name = "Enchant Bracer - Superior Stamina",
            categories = { "Bracer Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16251,
                },
            },
            materials = {
                { item_id = 16204, qty = 15 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 20025,
            name = "Enchant Chest - Greater Stats",
            categories = { "Chest Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16253,
                },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16204, qty = 15 },
                { item_id = 16203, qty = 10 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1219587,
            name = "Enchant Cloak - Agility",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 274399,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 16203, qty = 3 },
                { item_id = 16204, qty = 9 },
                { item_id = 7078, qty = 1 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25086,
            name = "Enchant Cloak - Dodge",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20736,
                },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 8 },
                { item_id = 12809, qty = 8 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25081,
            name = "Enchant Cloak - Greater Fire Resistance",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20732,
                },
                {
                    type = "Item",
                    item_id = 229008,
                },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 8 },
                { item_id = 7078, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25082,
            name = "Enchant Cloak - Greater Nature Resistance",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20733,
                },
                {
                    type = "Item",
                    item_id = 229009,
                },
            },
            materials = {
                { item_id = 20725, qty = 2 },
                { item_id = 14344, qty = 8 },
                { item_id = 12803, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25083,
            name = "Enchant Cloak - Stealth",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20734,
                },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 8 },
                { item_id = 13468, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25084,
            name = "Enchant Cloak - Subtlety",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20735,
                },
            },
            materials = {
                { item_id = 20725, qty = 4 },
                { item_id = 14344, qty = 6 },
                { item_id = 11754, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1213626,
            name = "Enchant Gloves - Arcane Power",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249534,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 20725, qty = 2 },
                { item_id = 14344, qty = 5 },
                { item_id = 12753, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25078,
            name = "Enchant Gloves - Fire Power",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20729,
                },
            },
            materials = {
                { item_id = 20725, qty = 2 },
                { item_id = 14344, qty = 10 },
                { item_id = 7078, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25074,
            name = "Enchant Gloves - Frost Power",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20728,
                },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 10 },
                { item_id = 7080, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25079,
            name = "Enchant Gloves - Healing Power",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20730,
                },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 8 },
                { item_id = 12811, qty = 1 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1213622,
            name = "Enchant Gloves - Holy Power",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249536,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 20725, qty = 2 },
                { item_id = 14344, qty = 5 },
                { item_id = 13180, qty = 5 },
                { item_id = 12735, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1248645,
            name = "Enchant Gloves - Natural Power",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 249535,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 20725, qty = 2 },
                { item_id = 14344, qty = 5 },
                { item_id = 248822, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25073,
            name = "Enchant Gloves - Shadow Power",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20727,
                },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 10 },
                { item_id = 12808, qty = 6 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25080,
            name = "Enchant Gloves - Superior Agility",
            categories = { "Cloak Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20731,
                },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 8 },
                { item_id = 7082, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1248640,
            name = "Enchant Gloves - Superior Strength",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 274398,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 20725, qty = 4 },
                { item_id = 16203, qty = 8 },
                { item_id = 7076, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 25072,
            name = "Enchant Gloves - Threat",
            categories = { "Glove Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 20726,
                },
            },
            materials = {
                { item_id = 20725, qty = 4 },
                { item_id = 14344, qty = 6 },
                { item_id = 18512, qty = 8 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1219578,
            name = "Enchant Off-Hand - Excellent Spirit",
            categories = { "Off-Hand Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 274392,
                },
            },
            materials = {
                { item_id = 20725, qty = 2 },
                { item_id = 16204, qty = 18 },
                { item_id = 7080, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1219577,
            name = "Enchant Off-Hand - Superior Intellect",
            categories = { "Off-Hand Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 274391,
                },
            },
            materials = {
                { item_id = 20725, qty = 2 },
                { item_id = 16204, qty = 18 },
                { item_id = 7082, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1219579,
            name = "Enchant Off-Hand - Wisdom",
            categories = { "Off-Hand Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Vendor",
                    item_id = 274393,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            materials = {
                { item_id = 14344, qty = 6 },
                { item_id = 16204, qty = 18 },
                { item_id = 7082, qty = 1 },
                { item_id = 7080, qty = 1 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1220623,
            name = "Enchant Shield - Critical Strike",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 274400,
                },
            },
            materials = {
                { item_id = 14344, qty = 5 },
                { item_id = 16204, qty = 15 },
                { item_id = 12938, qty = 1 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1219581,
            name = "Enchant Shield - Excellent Stamina",
            categories = { "Shield Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 274395,
                },
            },
            materials = {
                { item_id = 14344, qty = 6 },
                { item_id = 16204, qty = 18 },
                { item_id = 7076, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 20034,
            name = "Enchant Weapon - Crusader",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16252,
                },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 12811, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 22750,
            name = "Enchant Weapon - Healing Power",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 18260,
                },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16203, qty = 8 },
                { item_id = 12803, qty = 6 },
                { item_id = 7080, qty = 6 },
                { item_id = 12811, qty = 1 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 20032,
            name = "Enchant Weapon - Lifestealing",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16254,
                },
            },
            materials = {
                { item_id = 14344, qty = 6 },
                { item_id = 12808, qty = 6 },
                { item_id = 12803, qty = 6 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 23804,
            name = "Enchant Weapon - Mighty Intellect",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 19449,
                },
            },
            materials = {
                { item_id = 14344, qty = 15 },
                { item_id = 16203, qty = 12 },
                { item_id = 16204, qty = 20 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 23803,
            name = "Enchant Weapon - Mighty Spirit",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 19448,
                },
            },
            materials = {
                { item_id = 14344, qty = 10 },
                { item_id = 16203, qty = 8 },
                { item_id = 16204, qty = 15 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 22749,
            name = "Enchant Weapon - Spell Power",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 18259,
                },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16203, qty = 12 },
                { item_id = 7078, qty = 4 },
                { item_id = 7080, qty = 4 },
                { item_id = 7082, qty = 4 },
                { item_id = 13926, qty = 2 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 20031,
            name = "Enchant Weapon - Superior Striking",
            categories = { "Weapon Enchants" },
            icon = "spell_holy_greaterheal",
            source = {
                {
                    type = "Item",
                    item_id = 16250,
                },
            },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 16203, qty = 10 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1306524,
            name = "Idol of Swiftness",
            categories = { "Relics" },
            icon = "ability_druid_nourish",
            source = {
                {
                    type = "Item",
                    item_id = 279299,
                },
            },
            product = { item_id = 279250, qty = 1 },
            materials = {
                { item_id = 274030, qty = 1 },
                { item_id = 20725, qty = 1 },
                { item_id = 16203, qty = 2 },
                { item_id = 16204, qty = 12 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 1249128,
            name = "Idol of the Dream",
            categories = { "Relics" },
            icon = "inv_relics_idolofferocity",
            source = {
                {
                    type = "Vendor",
                    item_id = 249529,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 220606, qty = 1 },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 16203, qty = 4 },
                { item_id = 16204, qty = 6 },
                { item_id = 249431, qty = 8 },
                { item_id = 249430, qty = 4 },
                { item_id = 249409, qty = 2 },
                { item_id = 11291, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1306525,
            name = "Idol of the Ursine Twins",
            categories = { "Relics" },
            icon = "inv_misc_idol_04",
            source = {
                {
                    type = "Item",
                    item_id = 279300,
                },
            },
            product = { item_id = 279251, qty = 1 },
            materials = {
                { item_id = 274030, qty = 1 },
                { item_id = 20725, qty = 1 },
                { item_id = 16203, qty = 2 },
                { item_id = 16204, qty = 12 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 1249152,
            name = "Libram of Holy Alacrity",
            categories = { "Relics" },
            icon = "inv_relics_libramofhope",
            source = {
                {
                    type = "Vendor",
                    item_id = 249530,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 228175, qty = 1 },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16203, qty = 3 },
                { item_id = 16204, qty = 4 },
                { item_id = 249431, qty = 8 },
                { item_id = 249430, qty = 4 },
                { item_id = 249409, qty = 2 },
                { item_id = 10308, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1306522,
            name = "Libram of Infusion",
            categories = { "Relics" },
            icon = "inv_misc_book_13",
            source = {
                {
                    type = "Item",
                    item_id = 279297,
                },
            },
            product = { item_id = 279248, qty = 1 },
            materials = {
                { item_id = 274030, qty = 1 },
                { item_id = 20725, qty = 1 },
                { item_id = 16203, qty = 2 },
                { item_id = 16204, qty = 12 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 1306521,
            name = "Steadfast Libram",
            categories = { "Relics" },
            icon = "inv_relics_libramofgrace",
            source = {
                {
                    type = "Item",
                    item_id = 279296,
                },
            },
            product = { item_id = 279247, qty = 1 },
            materials = {
                { item_id = 274030, qty = 1 },
                { item_id = 20725, qty = 1 },
                { item_id = 16203, qty = 2 },
                { item_id = 16204, qty = 12 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 1306520,
            name = "Torch of Light",
            categories = { "Wands" },
            icon = "inv_torch_lit",
            source = {
                {
                    type = "Item",
                    item_id = 279295,
                },
            },
            product = { item_id = 279246, qty = 1 },
            materials = {
                { item_id = 274030, qty = 2 },
                { item_id = 20725, qty = 1 },
                { item_id = 14344, qty = 6 },
                { item_id = 16202, qty = 5 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 1249154,
            name = "Totem of Thunder",
            categories = { "Relics" },
            icon = "inv_relics_totemofrebirth",
            source = {
                {
                    type = "Vendor",
                    item_id = 249532,
                    currencies = {
                        { currency_id = 3402, qty = 240, name = "Merchant's Favor" },
                    },
                    location = "Alynsia, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 228176, qty = 1 },
            materials = {
                { item_id = 14344, qty = 1 },
                { item_id = 16203, qty = 8 },
                { item_id = 16204, qty = 10 },
                { item_id = 249431, qty = 8 },
                { item_id = 249430, qty = 4 },
                { item_id = 249409, qty = 2 },
                { item_id = 11291, qty = 4 },
            },
            levels = { 300, 320, 340, 360 },
        },
        {
            spell_id = 1306523,
            name = "Totem of Urgency",
            categories = { "Relics" },
            icon = "inv_ability_totemicshaman_surgingtotem",
            source = {
                {
                    type = "Item",
                    item_id = 279298,
                },
            },
            product = { item_id = 279249, qty = 1 },
            materials = {
                { item_id = 274030, qty = 1 },
                { item_id = 20725, qty = 1 },
                { item_id = 16203, qty = 2 },
                { item_id = 16204, qty = 12 },
            },
            levels = { 300, 310, 317, 325 },
        },
    },
}
