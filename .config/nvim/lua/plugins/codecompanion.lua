return {
  'olimorris/codecompanion.nvim',
  opts = {
    strategies = {
      chat = {
        adapter = 'copilot',
      },
      inline = {
        adapter = 'copilot',
      },
    },
    prompt_library = {
      ["Generate a JJ Commit Message"] = {
        strategy = "chat",
        description = "Generate a commit message for Jujutsu",
        opts = {
          is_slash_cmd = true,
          short_name = "jjcommit",
          auto_submit = true,
        },
        prompts = {
          {
            role = "user",
            content = function()
              return string.format(
                [[You are an expert at following the Conventional Commit specification. Given the git diff listed below, please generate a commit message for me:

```diff
%s
```
]],
                vim.fn.system("jj diff --git")
              )
            end,
            opts = {
              contains_code = true,
            },
          },
        },
      },
    }
  }
}
