return {
          "preservim/vim-pencil",
          ft = { "markdown", "text", "tex" },

          config = function ()
                  vim.g["pencil#wrapModeDefault"] = 'soft'

                  local augroup = vim.api.nvim_create_augroup("UserPencilConfig", { clear = true })

                  vim.api.nvim_create_autocmd("FileType", {
                          pattern = { "markdown", "text", "tex" },
                          group = augroup,

                          callback = function ()
                                  vim.cmd("call pencil#init()")
                          end,
                  })
          end
}
