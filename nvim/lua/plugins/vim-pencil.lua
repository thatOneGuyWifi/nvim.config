return {
        "reedes/vim-pencil",
        ft = {"markdown", "text", "tex"},
        config = function ()
                vim.g['pencil#wrapModeDefault'] = 'soft'

                vim.cmd([[
                augroup pencil

                autocmd!

                autocmd FileType markdown,mkd call pencil#init()

                autocmd FileType text   call pencil#init()
                autocmd FileType tex    call pencil#init()
                augroup END
                ]])
        end
}
