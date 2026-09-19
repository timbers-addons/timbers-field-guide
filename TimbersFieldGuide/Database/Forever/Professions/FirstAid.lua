local _, TFG = ...

TFG.FIRST_AID_FOREVER = {
    [1] = {
        {
            spell_id = 3275,
            name = "Linen Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_15",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 1251, qty = 1 },
            materials = {
                { item_id = 2589, qty = 1 },
            },
            levels = { 1, 30, 45, 60 },
        },
        {
            spell_id = 1244431,
            name = "Minor Healing Potion",
            categories = { "Healing Potions" },
            icon = "inv_potion_49",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 118, qty = 1 },
            materials = {
                { item_id = 3371, qty = 1 },
                { item_id = 2678, qty = 1 },
                { item_id = 2447, qty = 1 },
            },
            levels = { 1, 55, 75, 95 },
        },
        {
            spell_id = 3273,
            name = "First Aid",
            categories = { "Profession Training" },
            icon = "spell_holy_sealofsacrifice",
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
    [20] = {
        {
            spell_id = 1230117,
            name = "First Aid Kit",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_misc_bandage_11",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 279968, qty = 1 },
            materials = {
                { item_id = 1251, qty = 3 },
                { item_id = 159, qty = 1 },
            },
            levels = { 20, 20, 22, 25 },
        },
    },
    [40] = {
        {
            spell_id = 3276,
            name = "Heavy Linen Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_18",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 2581, qty = 1 },
            materials = {
                { item_id = 2589, qty = 2 },
            },
            levels = { 40, 50, 75, 100 },
        },
    },
    [50] = {
        {
            spell_id = 3274,
            name = "First Aid",
            categories = { "Profession Training" },
            icon = "spell_holy_sealofsacrifice",
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
    [55] = {
        {
            spell_id = 1244432,
            name = "Lesser Healing Potion",
            categories = { "Healing Potions" },
            icon = "inv_potion_50",
            source = {
                {
                    type = "Trainer",
                    cost = 150,
                },
            },
            product = { item_id = 858, qty = 1 },
            materials = {
                { item_id = 3371, qty = 1 },
                { item_id = 2678, qty = 2 },
                { item_id = 2450, qty = 1 },
            },
            levels = { 55, 85, 105, 125 },
        },
    },
    [80] = {
        {
            spell_id = 7934,
            name = "Anti-Venom",
            categories = { "Curatives" },
            icon = "inv_misc_slime_01",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            product = { item_id = 6452, qty = 3 },
            materials = {
                { item_id = 1475, qty = 1 },
            },
            levels = { 80, 80, 115, 150 },
        },
        {
            spell_id = 3277,
            name = "Wool Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_14",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            product = { item_id = 3530, qty = 1 },
            materials = {
                { item_id = 2592, qty = 1 },
            },
            levels = { 80, 80, 115, 150 },
        },
    },
    [90] = {
        {
            spell_id = 1259342,
            name = "Simple Poultice",
            categories = { "Curatives" },
            icon = "inv_10_alchemy2_quenchingfluid_color2",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            product = { item_id = 255716, qty = 3 },
            materials = {
                { item_id = 3174, qty = 1 },
                { item_id = 2678, qty = 1 },
                { item_id = 2723, qty = 1 },
            },
            levels = { 90, 90, 125, 160 },
        },
    },
    [110] = {
        {
            spell_id = 1244433,
            name = "Healing Potion",
            categories = { "Healing Potions" },
            icon = "inv_potion_51",
            source = {
                {
                    type = "Trainer",
                    cost = 800,
                },
            },
            product = { item_id = 929, qty = 1 },
            materials = {
                { item_id = 3372, qty = 1 },
                { item_id = 2692, qty = 1 },
                { item_id = 2453, qty = 1 },
            },
            levels = { 110, 135, 155, 175 },
        },
    },
    [115] = {
        {
            spell_id = 3278,
            name = "Heavy Wool Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_17",
            source = {
                {
                    type = "Trainer",
                    cost = 1000,
                },
            },
            product = { item_id = 3531, qty = 1 },
            materials = {
                { item_id = 2592, qty = 2 },
            },
            levels = { 115, 115, 150, 185 },
        },
    },
    [120] = {
        {
            spell_id = 1259347,
            name = "Woolen Tourniquet",
            categories = { "Curatives" },
            icon = "inv_misc_bandage_05",
            source = {
                {
                    type = "Trainer",
                    cost = 1200,
                },
            },
            product = { item_id = 255720, qty = 1 },
            materials = {
                { item_id = 2592, qty = 2 },
                { item_id = 2321, qty = 2 },
            },
            levels = { 120, 120, 155, 190 },
        },
    },
    [125] = {
        {
            spell_id = 7924,
            name = "First Aid",
            categories = { "Profession Training" },
            icon = "spell_holy_sealofsacrifice",
            levels = { 125 },
            cap = 225,
        },
    },
    [130] = {
        {
            spell_id = 7935,
            name = "Strong Anti-Venom",
            categories = { "Curatives" },
            icon = "inv_misc_slime_01",
            source = {
                {
                    type = "Item",
                    item_id = 6454,
                },
            },
            product = { item_id = 6453, qty = 3 },
            materials = {
                { item_id = 1288, qty = 1 },
            },
            levels = { 130, 130, 165, 200 },
        },
    },
    [140] = {
        {
            spell_id = 1259343,
            name = "Clever Poultice",
            categories = { "Curatives" },
            icon = "inv_10_alchemy2_quenchingfluid_color4",
            source = {
                {
                    type = "Item",
                    item_id = 255724,
                },
            },
            product = { item_id = 255717, qty = 3 },
            materials = {
                { item_id = 1468, qty = 1 },
                { item_id = 3713, qty = 1 },
                { item_id = 2686, qty = 1 },
            },
            levels = { 140, 160, 190, 220 },
        },
        {
            spell_id = 1262996,
            name = "Toxin Study",
            categories = { "Camping" },
            icon = "inv_misc_potiona3",
            source = {
                {
                    type = "Item",
                    item_id = 273105,
                },
            },
            product = { item_id = 279940, qty = 1 },
            materials = {
                { item_id = 6452, qty = 1 },
                { item_id = 8544, qty = 2 },
                { item_id = 4470, qty = 2 },
            },
            levels = { 140, 140, 142, 145 },
        },
    },
    [150] = {
        {
            spell_id = 7928,
            name = "Silk Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_01",
            source = {
                {
                    type = "Trainer",
                    cost = 5000,
                },
            },
            product = { item_id = 6450, qty = 1 },
            materials = {
                { item_id = 4306, qty = 1 },
            },
            levels = { 150, 150, 180, 210 },
        },
    },
    [155] = {
        {
            spell_id = 1244434,
            name = "Greater Healing Potion",
            categories = { "Healing Potions" },
            icon = "inv_potion_52",
            source = {
                {
                    type = "Item",
                    item_id = 255723,
                },
            },
            product = { item_id = 1710, qty = 1 },
            materials = {
                { item_id = 3372, qty = 1 },
                { item_id = 2692, qty = 3 },
                { item_id = 3357, qty = 1 },
            },
            levels = { 155, 175, 195, 215 },
        },
    },
    [180] = {
        {
            spell_id = 7929,
            name = "Heavy Silk Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_02",
            source = {
                {
                    type = "Item",
                    item_id = 16112,
                },
            },
            product = { item_id = 6451, qty = 1 },
            materials = {
                { item_id = 4306, qty = 2 },
            },
            levels = { 180, 180, 210, 240 },
        },
    },
    [200] = {
        {
            spell_id = 1259348,
            name = "Leather Tourniquet",
            categories = { "Curatives" },
            icon = "inv_misc_bandage_06",
            source = {
                {
                    type = "Item",
                    item_id = 255726,
                },
            },
            product = { item_id = 255721, qty = 1 },
            materials = {
                { item_id = 4304, qty = 2 },
                { item_id = 4291, qty = 2 },
            },
            levels = { 200, 220, 250, 280 },
        },
    },
    [210] = {
        {
            spell_id = 10840,
            name = "Mageweave Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_19",
            source = {
                {
                    type = "Item",
                    item_id = 16113,
                },
            },
            product = { item_id = 8544, qty = 1 },
            materials = {
                { item_id = 4338, qty = 1 },
            },
            levels = { 210, 210, 240, 270 },
        },
        {
            spell_id = 1259344,
            name = "Superior Poultice",
            categories = { "Curatives" },
            icon = "inv_10_alchemy2_quenchingfluid_color3",
            source = {
                {
                    type = "Item",
                    item_id = 255727,
                },
            },
            product = { item_id = 255718, qty = 3 },
            materials = {
                { item_id = 7070, qty = 1 },
                { item_id = 2692, qty = 1 },
                { item_id = 2596, qty = 1 },
            },
            levels = { 210, 225, 255, 285 },
        },
    },
    [215] = {
        {
            spell_id = 1259341,
            name = "Potent Anti-Venom",
            categories = { "Curatives" },
            icon = "ability_creature_poison_02",
            source = {
                {
                    type = "Item",
                    item_id = 255728,
                },
            },
            product = { item_id = 255715, qty = 3 },
            materials = {
                { item_id = 255645, qty = 1 },
            },
            levels = { 215, 230, 260, 290 },
        },
        {
            spell_id = 1244435,
            name = "Superior Healing Potion",
            categories = { "Healing Potions" },
            icon = "inv_potion_53",
            source = {
                {
                    type = "Item",
                    item_id = 255725,
                },
            },
            product = { item_id = 3928, qty = 1 },
            materials = {
                { item_id = 8925, qty = 1 },
                { item_id = 3713, qty = 1 },
                { item_id = 8838, qty = 1 },
            },
            levels = { 215, 230, 250, 270 },
        },
    },
    [225] = {
        {
            spell_id = 10846,
            name = "First Aid",
            categories = { "Profession Training" },
            icon = "spell_holy_sealofsacrifice",
            levels = { 225 },
            cap = 300,
        },
    },
    [240] = {
        {
            spell_id = 10841,
            name = "Heavy Mageweave Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_20",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 8545, qty = 1 },
            materials = {
                { item_id = 4338, qty = 2 },
            },
            levels = { 240, 240, 270, 300 },
        },
    },
    [260] = {
        {
            spell_id = 18629,
            name = "Runecloth Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_11",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 14529, qty = 1 },
            materials = {
                { item_id = 14047, qty = 1 },
            },
            levels = { 260, 260, 290, 320 },
        },
    },
    [265] = {
        {
            spell_id = 1259349,
            name = "Surgical Tourniquet",
            categories = { "Curatives" },
            icon = "inv_misc_bandage_09",
            source = {
                {
                    type = "Item",
                    item_id = 255730,
                },
            },
            product = { item_id = 255722, qty = 1 },
            materials = {
                { item_id = 8170, qty = 2 },
                { item_id = 14047, qty = 2 },
                { item_id = 8343, qty = 2 },
            },
            levels = { 265, 280, 310, 340 },
        },
    },
    [275] = {
        {
            spell_id = 1244436,
            name = "Major Healing Potion",
            categories = { "Healing Potions" },
            icon = "inv_potion_54",
            source = {
                {
                    type = "Item",
                    item_id = 255729,
                },
            },
            product = { item_id = 13446, qty = 1 },
            materials = {
                { item_id = 8925, qty = 1 },
                { item_id = 3713, qty = 3 },
                { item_id = 13464, qty = 1 },
            },
            levels = { 275, 290, 310, 330 },
        },
    },
    [280] = {
        {
            spell_id = 1259345,
            name = "Powerful Poultice",
            categories = { "Curatives" },
            icon = "inv_10_alchemy2_quenchingfluid_color1",
            source = {
                {
                    type = "Item",
                    item_id = 255731,
                },
            },
            product = { item_id = 255719, qty = 3 },
            materials = {
                { item_id = 7080, qty = 1 },
                { item_id = 2692, qty = 1 },
                { item_id = 2594, qty = 1 },
            },
            levels = { 280, 295, 325, 355 },
        },
    },
    [290] = {
        {
            spell_id = 18630,
            name = "Heavy Runecloth Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_12",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 14530, qty = 1 },
            materials = {
                { item_id = 14047, qty = 2 },
            },
            levels = { 290, 290, 320, 350 },
        },
    },
    [300] = {
        {
            spell_id = 470349,
            name = "Dense Runecloth Bandage",
            categories = { "Bandages" },
            icon = "inv_misc_bandage_netherweave_heavy",
            source = {
                {
                    type = "Item",
                    item_id = 232434,
                },
            },
            product = { item_id = 232433, qty = 1 },
            materials = {
                { item_id = 14530, qty = 2 },
            },
            levels = { 300, 315, 327, 340 },
        },
        {
            spell_id = 1263001,
            name = "Plague Doctor's Laboratory",
            categories = { "Camping" },
            icon = "inv_10_alchemy_incenseholder_color1",
            source = {
                {
                    type = "Item",
                    item_id = 273118,
                },
            },
            product = { item_id = 279951, qty = 1 },
            materials = {
                { item_id = 4470, qty = 2 },
                { item_id = 6453, qty = 2 },
                { item_id = 14530, qty = 5 },
            },
            levels = { 300, 300, 300, 300 },
        },
        {
            spell_id = 23787,
            name = "Powerful Anti-Venom",
            categories = { "Curatives" },
            icon = "inv_drink_14",
            source = {
                {
                    type = "Item",
                    item_id = 19442,
                },
            },
            product = { item_id = 19440, qty = 3 },
            materials = {
                { item_id = 19441, qty = 1 },
            },
            levels = { 300, 300, 330, 360 },
        },
    },
}
