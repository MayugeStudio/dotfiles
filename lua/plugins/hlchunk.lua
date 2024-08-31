require("hlchunk").setup({
    chunk = {enable=false},
    ident = {enable=false},
    blank = {
        enable = true,
        char = { '.' },
        priority = 20,
    },
    line_num = {enable=false}
})

