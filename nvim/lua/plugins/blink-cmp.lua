return {
        "saghen/blink.cmp",
        version = "1.*",
        lazy = false,
        dependencies = {
                "rafamadriz/friendly-snippets",
                "ribru17/blink-cmp-spell",
        },
        opts = {
                keymap = {preset = "enter"},
                sources = {
                        default = { "lsp", "snippets", "buffer", "spell"},
                        providers = {
                                spell = {
                                        name = "spell",
                                        module = "blink-cmp-spell",
                                        score_offset = 0,
                                },
                        },
                },
                appearance = { nerd_font_variant = "mono" },
        },
}
