require('lualine').setup {
    options = {
        component_separators = '',
        section_separators = { left = '', right = '' },
        globalstatus = true
    },
    sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_y = { 'filetype', 'progress' },
        lualine_c = {
            'lsp_status'
        },
        lualine_x = {},
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
    }
}
