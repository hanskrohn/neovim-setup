vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'

vim.g.ale_linters = { go = {'gopls'} }
vim.g.ale_fixers = { ['*'] = {'remove_trailing_lines', 'trim_whitespace'}, go = {'gofmt', 'goimports'} }
vim.g.ale_fix_on_save = 1
