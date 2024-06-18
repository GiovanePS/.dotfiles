require('themes.monokai')
vim.cmd('colorscheme monokai_soda')

-- Set background transparent
vim.cmd('hi Normal guibg=none guifg=none')

-- Set column-left transparent
vim.cmd('hi LineNr guibg=none guifg=none')

-- Set visual selection other color
vim.cmd('hi Visual  guifg=#000000 guibg=#FFFFFF gui=none')
