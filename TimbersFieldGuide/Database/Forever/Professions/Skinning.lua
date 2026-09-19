local _, TFG = ...

TFG.SKINNING_FOREVER = {
    [1] = {
        {
            spell_id = 1278068,
            name = "Tanning",
            categories = { "Camping" },
            icon = "10prof_table_leatherworking01",
            levels = { 1 },
        },
        {
            spell_id = 8613,
            name = "Skinning",
            categories = { "Profession Training" },
            icon = "inv_misc_pelt_wolf_01",
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
    [20] = {
        {
            spell_id = 1229517,
            name = "Camp Chair",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_crate_01",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 279979, qty = 1 },
            materials = {
                { item_id = 2318, qty = 3 },
                { item_id = 4470, qty = 2 },
            },
            levels = { 20, 20, 22, 25 },
        },
    },
    [50] = {
        {
            spell_id = 8617,
            name = "Skinning",
            categories = { "Profession Training" },
            icon = "inv_misc_pelt_wolf_01",
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
    [125] = {
        {
            spell_id = 8618,
            name = "Skinning",
            categories = { "Profession Training" },
            icon = "inv_misc_pelt_wolf_01",
            source = {
                {
                    type = "Trainer",
                    cost = 5000,
                },
            },
            levels = { 125 },
            cap = 225,
        },
    },
    [140] = {
        {
            spell_id = 1262985,
            name = "Field Guide",
            categories = { "Camping" },
            icon = "inv_misc_book_03",
            source = {
                {
                    type = "Item",
                    item_id = 273098,
                },
            },
            product = { item_id = 279969, qty = 1 },
            materials = {
                { item_id = 2319, qty = 3 },
                { item_id = 5784, qty = 2 },
                { item_id = 2321, qty = 1 },
            },
            levels = { 140, 140, 142, 145 },
        },
    },
    [200] = {
        {
            spell_id = 10768,
            name = "Skinning",
            categories = { "Profession Training" },
            icon = "inv_misc_pelt_wolf_01",
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
    [300] = {
        {
            spell_id = 1262982,
            name = "Trapper's Workbench",
            categories = { "Camping" },
            icon = "inv_misc_kobysstools_knifetrap_color3",
            source = {
                {
                    type = "Item",
                    item_id = 273109,
                },
            },
            product = { item_id = 279938, qty = 1 },
            materials = {
                { item_id = 4470, qty = 2 },
                { item_id = 4234, qty = 4 },
                { item_id = 3575, qty = 1 },
            },
            levels = { 300, 300, 300, 300 },
        },
    },
}
