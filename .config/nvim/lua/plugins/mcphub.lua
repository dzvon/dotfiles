return {
    "ravitemer/mcphub.nvim",
    version = "6.2.0",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    build = "npm install -g mcp-hub@4.2.1",  -- Installs `mcp-hub` node binary globally
    config = function()
        require("mcphub").setup()
    end
}
