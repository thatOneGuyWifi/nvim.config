return {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = {'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons'},

        ---@module 'render-markdown'
        ---@type render.md.UserConfig

        opts = {},

        config = function ()
                require('render-markdown').setup({
                        render_modes = true,

                        heading = {
                                enabled = true,
                                render_modes = true,
                                atx = true,
                                setext = true,
                                sign = true,

                                icons = { '󰼏 ', '󰼐 ' , '󰼑 ', '󰼒 ', '󰼓 ', '󰼔 ' },
                                position = 'overlay',
                                signs = { '󰫎 ' },
                                width = 'full',
                                left_margin = 0,
                                left_pad = 0,
                                right_pad = 0,
                                min_width = 0,
                                border = false,
                                border_virtual = false,
                                border_prefix = false,
                                above = '▄',
                                below = '▀',

                                backgrounds = {
                                        'RenderMarkdownH1Bg',
                                        'RenderMarkdownH2Bg',
                                        'RenderMarkdownH3Bg',
                                        'RenderMarkdownH4Bg',
                                        'RenderMarkdownH5Bg',
                                        'RenderMarkdownH6Bg',
                                },

                                foregrounds = {
                                        'RenderMarkdownH1',
                                        'RenderMarkdownH2',
                                        'RenderMarkdownH3',
                                        'RenderMarkdownH4',
                                        'RenderMarkdownH5',
                                        'RenderMarkdownH6',
                                },

                                custom = {},
                        },

                        code = {
                                enabled = true,
                                render_modes = true,
                                sign = true,
                                conceal_delimiters = true,
                                language = true,
                                position = 'left',
                                language_icon = true,
                                language_name = true,
                                language_info = true,
                                language_pad = 0,

                                disable = {},
                                disable_background = { 'diff' },
                                background_inset = 1,
                                width = 'full',

                                left_margin = 0,
                                left_pad = 0,
                                right_pad = 0,
                                min_width = 0,

                                border = 'hide',
                                language_border = '█',
                                language_left = '',
                                language_right = '',

                                above = '▄',
                                below = '▀',

                                inline = true,
                                inline_left = '',
                                inline_right = '',
                                inline_pad = 0,

                                priority = 140,

                                highlight = 'RenderMarkdownCode',
                                highlight_info = 'RenderMarkdownCodeInfo',
                                highlight_language = nil,
                                highlight_border = 'RenderMarkdownCodeBorder',
                                highlight_fallback = 'RenderMarkdownCodeFallback',
                                highlight_inline = 'RenderMarkdownCodeInline',
                                highlight_inline_left = nil,
                                highlight_inline_right = nil,
                                style = 'full',
                        },
                        quote = {
                                enabled = true,
                                render_modes = true,

                                icon = '▋',

                                repeat_linebreak = true,

                                highlight = {
                                        'RenderMarkdownQuote1',
                                        'RenderMarkdownQuote2',
                                        'RenderMarkdownQuote3',
                                        'RenderMarkdownQuote4',
                                        'RenderMarkdownQuote5',
                                        'RenderMarkdownQuote6',
                                },

                        },

                        callout = {
                                note      = { raw = '[!NOTE]',      rendered = '󰋽 Note',      highlight = 'RenderMarkdownInfo',    category = 'github'   },
                                tip       = { raw = '[!TIP]',       rendered = '󰌶 Tip',       highlight = 'RenderMarkdownSuccess', category = 'github'   },
                                important = { raw = '[!IMPORTANT]', rendered = '󰅾 Important', highlight = 'RenderMarkdownHint',    category = 'github'   },
                                warning   = { raw = '[!WARNING]',   rendered = '󰀪 Warning',   highlight = 'RenderMarkdownWarn',    category = 'github'   },
                                caution   = { raw = '[!CAUTION]',   rendered = '󰳦 Caution',   highlight = 'RenderMarkdownError',   category = 'github'   },

                        },

                        checkbox = {
                                enabled = true,
                                render_modes = true,
                                bullet = false,

                                left_pad = 0,
                                right_pad = 1,

                                unchecked = {
                                        icon = '󰄱 ',
                                        highlight = 'RenderMarkdownUnchecked',
                                        scope_highlight = nil,
                                },
                                checked = {
                                        icon = '󰱒 ',
                                        highlight = 'RenderMarkdownChecked',
                                        scope_highlight = nil,
                                },
                                custom = {
                                        todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo', scope_highlight = nil },
                                },
                                scope_priority = nil,
                        },

                        dash = {
                                enabled = true,
                                render_modes = true,

                                icon = '─',
                                width = 'full',

                                left_margin = 0,

                                priority = nil,
                                highlight = 'RenderMarkdownDash',
                        },

                        latex = {
                                enabled = true,
                                render_modes = true,
                                converter = {'utftex', 'latex2text'},
                                highlight = 'RenderMarkdownMath',
                                position = 'center',

                                top_pad = 0,
                                bottom_pad = 0,
                        },

                        link = {
                                enabled = true,
                                render_modes = true,

                                footnote = {
                                        enabled = true,
                                        icon = '󰯔 ',

                                        body = function(ctx)
                                                return ctx.text
                                        end,

                                        superscript = true,

                                        prefix = '',
                                                        suffix = '',
                                                },

                                                image = '󰥶 ',

                                                image_custom = true,

                                                email = '󰀓 ',
                                                hyperlink = '󰌹 ',
                                                highlight = 'RenderMarkdownLink',
                                                highlight_title = 'RenderMarkdownLinkTitle',

                                                wiki = {
                                                        enabled = true,
                                                        icon = '󱗖 ',
                                                        conceal_destination = true,
                                                        body = function()
                                                                return nil
                                                        end,
                                                        highlight = 'RenderMarkdownWikiLink',
                                                        scope_highlight = nil,
                                                },

                                                custom = {
                                                        web = { icon = '󰖟 ', pattern = '^http' },
                                                        discord = { icon = '󰙯 ', pattern = 'discord%.com', kind = 'url' },
                                                        github = { icon = '󰊤 ', pattern = 'github%.com', kind = 'url' },
                                                        gitlab = { icon = '󰮠 ', pattern = 'gitlab%.com', kind = 'url' },
                                                        google = { icon = '󰊭 ', pattern = 'google%.com', kind = 'url' },
                                                        microsoft = { icon = ' ', pattern = 'microsoft%.com', kind = 'url' },
                                                        neovim = { icon = ' ', pattern = 'neovim%.io', kind = 'url' },
                                                        reddit = { icon = '󰑍 ', pattern = 'reddit%.com', kind = 'url' },
                                                        stackoverflow = { icon = '󰓌 ', pattern = 'stackoverflow%.com', kind = 'url' },
                                                        steam = { icon = ' ', pattern = 'steampowered%.com', kind = 'url' },
                                                        twitter = { icon = ' ', pattern = 'twitter%.com', kind = 'url' },
                                                        wikipedia = { icon = '󰖬 ', pattern = 'wikipedia%.org', kind = 'url' },
                                                        x = { icon = ' ', pattern = 'x%.com', kind = 'url' },
                                                        youtube = { icon = '󰗃 ', pattern = 'youtube[^.]*%.com', kind = 'url' },
                                                        youtube_short = { icon = '󰗃 ', pattern = 'youtu%.be', kind = 'url' },
                                                },
                                        },

                        bullet = {
                                enabled = true,
                                render_modes = true,

                                icons = { '●', '○', '◆', '◇' },
                                ordered_icons = function(ctx)
                                        local value = vim.trim(ctx.value)
                                        local index = tonumber(value:sub(1, #value - 1))
                                        return ('%d.'):format(index > 1 and index or ctx.index)
                                end,

                                left_pad = 0,
                                right_pad = 0,

                                highlight = 'RenderMarkdownBullet',

                                scope_highlight = {},
                                scope_priority = nil,
                        },
                })
        end
}
