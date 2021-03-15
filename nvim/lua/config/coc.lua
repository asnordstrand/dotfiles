local cmd = vim.cmd
local utils = require('utils')
local opt = utils.opt
local nvim_set_keymap = vim.api.nvim_set_keymap

-- coc.nvim extensions
vim.g.coc_global_extensions = {
  'coc-pairs',
  'coc-rust-analyzer',
  'coc-css',
  'coc-html',
  'coc-json',
  'coc-tsserver',
  'coc-eslint',
  'coc-prettier'
}

cmd [[highlight clear SignColumn]]
opt('o', 'completeopt', 'menuone,noselect,noinsert')

-- Give more space for displaying messages.
opt('o', 'cmdheight', 2)

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience.
opt('o', 'updatetime', 300)

-- Don't pass messages to |ins-completion-menu|.
cmd [[set shortmess+=c]]

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved.
opt('o', 'signcolumn', 'number')

-- Use <c-space> to trigger completion.
nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nvim_set_keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', { silent = true })
nvim_set_keymap('n', ']g', '<Plug>(coc-diagnostic-next)', { silent = true })

-- GoTo code navigation.
nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { silent = true })
nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { silent = true })

-- Use K to show documentation in preview window.
nvim_set_keymap('n', 'K', ':call <sid>show_documentation()<cr>', { silent = true, noremap = true })

-- Symbol renaming.
nvim_set_keymap('n', '<leader>rn', '<Plug>(coc-rename)', {})

-- Formatting selected code.
nvim_set_keymap('x', '<leader>f', '<Plug>(coc-format-selected)', {})
nvim_set_keymap('n', '<leader>f', '<Plug>(coc-format-selected)', {})

-- Applying codeAction to the selected region.
-- Example: `<leader>aap` for current paragraph
nvim_set_keymap('x', '<leader>a', '<Plug>(coc-codeaction-selected)', {})
nvim_set_keymap('n', '<leader>a', '<Plug>(coc-codeaction-selected)', {})

-- Remap keys for applying codeAction to the current buffer.
nvim_set_keymap('n', '<leader>ac', '<Plug>(coc-codeaction)', {})
-- Apply AutoFix to problem on the current line.
nvim_set_keymap('n', '<leader>qf', '<Plug>(coc-fix-current)', {})

-- Map function and class objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
nvim_set_keymap('x', 'if', '<Plug>(coc-funcobj-i)', {})
nvim_set_keymap('o', 'if', '<Plug>(coc-funcobj-i)', {})
nvim_set_keymap('x', 'af', '<Plug>(coc-funcobj-a)', {})
nvim_set_keymap('o', 'af', '<Plug>(coc-funcobj-a)', {})
nvim_set_keymap('x', 'ic', '<Plug>(coc-classobj-i)', {})
nvim_set_keymap('o', 'ic', '<Plug>(coc-classobj-i)', {})
nvim_set_keymap('x', 'ac', '<Plug>(coc-classobj-a)', {})
nvim_set_keymap('o', 'ac', '<Plug>(coc-classobj-a)', {})

-- Remap <C-f> and <C-b> for scroll float windows/popups.
nvim_set_keymap('n', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "\\<C-f>"', { silent = true, nowait = true, expr = true})

-- Use CTRL-S for selections ranges.
-- Requires 'textDocument/selectionRange' support from the language server.
nvim_set_keymap('n', '<C-s>', '<Plug>(coc-range-select)', { silent = true })
nvim_set_keymap('x', '<C-s>', '<Plug>(coc-range-select)', { silent = true })

-- Mappings for CocList
-- Show all diagnostics.
nvim_set_keymap('n', '<space>a', ':<C-u>CocList diagnostics<cr>', { silent = true, nowait = true})
-- Manage extensions.
nvim_set_keymap('n', '<space>e', ':<C-u>CocList extensions<cr>', { silent = true, nowait = true})
-- Show commands.
nvim_set_keymap('n', '<space>c', ':<C-u>CocList commands<cr>', { silent = true, nowait = true})
-- Find symbol of current document.
nvim_set_keymap('n', '<space>o', ':<C-u>CocList outline<cr>', { silent = true, nowait = true})
-- Search workplace symbols.
nvim_set_keymap('n', '<space>s', ':<C-u>CocList -I symbols<cr>', { silent = true, nowait = true})
-- Do default action for next item.
nvim_set_keymap('n', '<space>j', ':<C-u>CocNext<cr>', { silent = true, nowait = true})
-- Do default action for previous item.
nvim_set_keymap('n', '<space>k', ':<C-u>CocPrev<cr>', { silent = true, nowait = true})
-- Resume latest coc list.
nvim_set_keymap('n', '<space>p', ':<C-u>CocListResume<cr>', { silent = true, nowait = true})
