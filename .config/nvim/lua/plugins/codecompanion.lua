return {
  'olimorris/codecompanion.nvim',
  init = function ()
    vim.keymap.set('n', 'g.', '<cmd>CodeCompanionActions<cr>')
  end,
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
              default = "claude-3.7-sonnet",
              choices = {
                ["o3-mini-2025-01-31"] = { opts = { can_reason = true } },
                ["o1-2024-12-17"] = { opts = { can_reason = true } },
                ["o1-mini-2024-09-12"] = { opts = { can_reason = true } },
                "claude-3.5-sonnet",
                "claude-3.7-sonnet",
                "claude-3.7-sonnet-thought",
                "gpt-4o-2024-08-06",
                "gemini-2.0-flash-001",
              }
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
