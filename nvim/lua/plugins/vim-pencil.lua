return {
        "reedes/vim-pencil",
        lazy = false,
        ft = {"markdown", "text", "tex"},
        config = function ()

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
