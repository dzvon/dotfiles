return {
  'olimorris/codecompanion.nvim',
  opts = {
    -- opts = {
    --   log_level = "DEBUG"
    -- },
    display = {
      chat = {
        show_settings = true,
      }
    },
    strategies = {
      chat = {
        adapter = 'copilot',
      },
      inline = {
        adapter = 'copilot',
      },
    },
    adapters = {
      copilot = function ()
        return require('codecompanion.adapters').extend("copilot", {
          schema = {
            model = {
              default = "claude-3.5-sonnet"
            }
          }
        })
      end,
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
      ["Translate Text"] = {
        strategy = "chat",
        description = "Translate text from one language to another",
        opts = {
          is_slash_cmd = true,
          short_name = "translate",
          auto_submit = false,
          -- stop_context_insertion = true,
          user_prompt = true,
        },
        prompts = {
          {
            role = "user",
            content = function()
              return [[Please translate the following text from Chinese to English and make it sound more native:

]]
            end,
            opts = {
              contains_code = false,
            },
          },
        },
      },
    }
  }
}
