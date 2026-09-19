local _, TFG = ...

TFG.HERBALISM_FOREVER = {
    [1] = {
        {
            spell_id = 1278062,
            name = "Gardening",
            categories = { "Camping" },
            icon = "inv_misc_shovel_01",
            levels = { 1 },
        },
        {
            spell_id = 1235236,
            name = "Herb Gathering",
            icon = "trade_engineering",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 1, 1, 1, 1 },
        },
        {
            spell_id = 2383,
            name = "Find Herbs",
            icon = "inv_misc_flower_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 1 },
        },
        {
            spell_id = 8387,
            name = "Find Herbs",
            icon = "inv_misc_herb_03",
            levels = { 1 },
        },
        {
            spell_id = 2366,
            name = "Herbalism",
            categories = { "Profession Training" },
            icon = "spell_nature_naturetouchgrow",
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
            spell_id = 2369,
            name = "Herbalism",
            icon = "spell_nature_naturetouchgrow",
            levels = { 1 },
        },
        {
            spell_id = 2371,
            name = "Herbalism",
            icon = "spell_nature_naturetouchgrow",
            levels = { 1 },
        },
        {
            item_id = 765,
            name = "Silverleaf",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_10",
            levels = { 1, 25, 62, 100 },
        },
        {
            item_id = 2447,
            name = "Peacebloom",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_flower_02",
            levels = { 1, 25, 62, 100 },
        },
    },
    [15] = {
        {
            item_id = 2449,
            name = "Earthroot",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_07",
            levels = { 15, 40, 77, 115 },
        },
    },
    [20] = {
        {
            spell_id = 1229705,
            name = "Incense Candle",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_misc_candle_02",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 279962, qty = 1 },
            materials = {
                { item_id = 2447, qty = 1 },
                { item_id = 765, qty = 1 },
            },
            levels = { 20, 20, 22, 25 },
        },
    },
    [50] = {
        {
            spell_id = 2368,
            name = "Herbalism",
            categories = { "Profession Training" },
            icon = "spell_nature_naturetouchgrow",
            source = {
                {
                    type = "Trainer",
                    cost = 500,
                },
            },
            levels = { 50 },
            cap = 150,
        },
        {
            item_id = 785,
            name = "Mageroyal",
            categories = { "Gathered Herbs" },
            icon = "inv_jewelry_talisman_03",
            levels = { 50, 75, 112, 150 },
        },
    },
    [70] = {
        {
            item_id = 2450,
            name = "Briarthorn",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_root_01",
            levels = { 70, 95, 132, 170 },
        },
    },
    [85] = {
        {
            item_id = 3820,
            name = "Stranglekelp",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_11",
            levels = { 85, 110, 147, 185 },
        },
    },
    [100] = {
        {
            item_id = 2453,
            name = "Bruiseweed",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_01",
            levels = { 100, 125, 162, 200 },
        },
    },
    [115] = {
        {
            item_id = 3355,
            name = "Wild Steelbloom",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_flower_01",
            levels = { 115, 140, 177, 215 },
        },
    },
    [120] = {
        {
            item_id = 3369,
            name = "Grave Moss",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_dust_02",
            levels = { 120, 145, 182, 220 },
        },
    },
    [125] = {
        {
            spell_id = 3570,
            name = "Herbalism",
            categories = { "Profession Training" },
            icon = "spell_nature_naturetouchgrow",
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
            item_id = 3356,
            name = "Kingsblood",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_03",
            levels = { 125, 150, 187, 225 },
        },
    },
    [140] = {
        {
            spell_id = 1262980,
            name = "Greenhouse",
            categories = { "Camping" },
            icon = "inv_misc_herb_08",
            source = {
                {
                    type = "Item",
                    item_id = 273106,
                },
            },
            product = { item_id = 279964, qty = 1 },
            materials = {
                { item_id = 4470, qty = 2 },
                { item_id = 8836, qty = 1 },
                { item_id = 8831, qty = 1 },
            },
            levels = { 140, 140, 142, 145 },
        },
    },
    [150] = {
        {
            item_id = 3357,
            name = "Liferoot",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_root_02",
            levels = { 150, 175, 212, 250 },
        },
    },
    [160] = {
        {
            item_id = 3818,
            name = "Fadeleaf",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_12",
            levels = { 160, 185, 222, 260 },
        },
    },
    [170] = {
        {
            item_id = 3821,
            name = "Goldthorn",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_15",
            levels = { 170, 195, 232, 270 },
        },
    },
    [185] = {
        {
            item_id = 3358,
            name = "Khadgar's Whisker",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_08",
            levels = { 185, 210, 247, 285 },
        },
    },
    [195] = {
        {
            item_id = 3819,
            name = "Wintersbite",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_flower_03",
            levels = { 195, 220, 257, 295 },
        },
    },
    [200] = {
        {
            spell_id = 11993,
            name = "Herbalism",
            categories = { "Profession Training" },
            icon = "spell_nature_naturetouchgrow",
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
    [205] = {
        {
            item_id = 4625,
            name = "Firebloom",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_19",
            levels = { 205, 230, 267, 305 },
        },
    },
    [210] = {
        {
            item_id = 8831,
            name = "Purple Lotus",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_17",
            levels = { 210, 235, 272, 310 },
        },
    },
    [220] = {
        {
            item_id = 8836,
            name = "Arthas' Tears",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_13",
            levels = { 220, 245, 282, 320 },
        },
    },
    [230] = {
        {
            item_id = 8838,
            name = "Sungrass",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_18",
            levels = { 230, 255, 292, 330 },
        },
    },
    [235] = {
        {
            item_id = 8839,
            name = "Blindweed",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_14",
            levels = { 235, 260, 297, 335 },
        },
    },
    [245] = {
        {
            item_id = 8845,
            name = "Ghost Mushroom",
            categories = { "Gathered Herbs" },
            icon = "inv_mushroom_08",
            levels = { 245, 270, 307, 345 },
        },
    },
    [250] = {
        {
            item_id = 8846,
            name = "Gromsblood",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_16",
            levels = { 250, 275, 312, 350 },
        },
    },
    [260] = {
        {
            item_id = 13464,
            name = "Golden Sansam",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_sansamroot",
            levels = { 260, 285, 322, 360 },
        },
    },
    [270] = {
        {
            item_id = 13463,
            name = "Dreamfoil",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_dreamfoil",
            levels = { 270, 295, 332, 370 },
        },
    },
    [280] = {
        {
            item_id = 13465,
            name = "Mountain Silversage",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_mountainsilversage",
            levels = { 280, 305, 342, 380 },
        },
    },
    [290] = {
        {
            item_id = 13466,
            name = "Plaguebloom",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_plaguebloom",
            levels = { 290, 315, 352, 390 },
        },
        {
            item_id = 13467,
            name = "Icecap",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_icecap",
            levels = { 290, 315, 352, 390 },
        },
    },
    [300] = {
        {
            spell_id = 1263070,
            name = "Seed Hybridizer",
            categories = { "Camping" },
            icon = "inv_farm_herbseed",
            source = {
                {
                    type = "Item",
                    item_id = 273120,
                },
            },
            product = { item_id = 279947, qty = 1 },
            materials = {
                { item_id = 13465, qty = 4 },
                { item_id = 8925, qty = 1 },
                { item_id = 14047, qty = 2 },
            },
            levels = { 300, 300, 300, 300 },
        },
        {
            item_id = 13468,
            name = "Black Lotus",
            categories = { "Gathered Herbs" },
            icon = "inv_misc_herb_blacklotus",
            levels = { 300, 325, 362, 400 },
        },
    },
}
