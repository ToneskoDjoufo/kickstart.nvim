return 
{
  "lervag/vimtex",
  lazy = false,
 
  init = function()
    -- Viewer PDF
    vim.g.vimtex_view_method = "skim" 

    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-shell-escape",
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
      },
      out_dir = "build",
    }
    
  end,
}

