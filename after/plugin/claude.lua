require("claude-code").setup{
    command = "claude --model haiku",
    keymaps = {
        toggle = {
            variants = {
                continue = false,
                verbose = false
            }
        }
    }
}
