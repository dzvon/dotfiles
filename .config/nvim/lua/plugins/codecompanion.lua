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
              -- choices = {
              --   ["o3-mini-2025-01-31"] = { opts = { can_reason = true } },
              --   ["o1-2024-12-17"] = { opts = { can_reason = true } },
              --   ["o1-mini-2024-09-12"] = { opts = { can_reason = true } },
              --   "claude-3.5-sonnet",
              --   "claude-3.7-sonnet",
              --   "claude-3.7-sonnet-thought",
              --   "gpt-4o-2024-08-06",
              --   "gemini-2.0-flash-001",
              -- }
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
          auto_submit = false,
        },
        prompts = {
          {
            role = "user",
            content = function()
              return string.format(
                [[
Act as an expert Git commit message writer. Your task is to create a clear, concise, and informative commit message based on the provided code changes and, most importantly, the _reason_ for those changes.

Guidelines:

1. Subject Line:
  - Use the Conventional Commits format (<type>[optional scope]: <description>) if applicable, otherwise a short imperative summary.
  - Use the imperative, present tense (e.g., "fix bug", "add feature").
  - Keep it concise, ideally under 50 characters.
  - Do not end with a period.
  - The first letter of description should be capitalized.
3. Body (Optional but encouraged for non-trivial changes):
  - Separate from the subject with a blank line.
  - Explain what the change is and why it was made, rather than how.
  - Wrap lines at 72 characters.
4. Footer (Optional):
  - Reference related issues (e.g., Closes #456, Refs #789).
  - Include `BREAKING CHANGE:` if applicable, followed by a description of the breaking change.

Input Code Changes/Description:

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
