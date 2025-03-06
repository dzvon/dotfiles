return {
  'olimorris/codecompanion.nvim',
  init = function()
    vim.keymap.set('n', '<leader>ca', '<cmd>CodeCompanionActions<cr>')
    vim.keymap.set({ 'n', 'v' }, '<leader>cc', '<cmd>CodeCompanionChat<cr>')
  end,
  opts = {
    -- opts = {
    --   log_level = "DEBUG"
    -- },
    display = {
      chat = {
        window = {
          layout = 'horizontal'
        }
      },
    },
    rules = {
      default = {
        files = {
          "AGENTS.md"
        }
      },
      opts = {
        chat = {
          enabled = true,
        }
      }
    },
    adapters = {
      http = {
        copilot = function()
          return require('codecompanion.adapters').extend("copilot", {
            schema = {
              model = {
                default = "gemini-3-flash-preview",
                -- choices = {
                --   "gpt-4.1",
                --   "o3-mini",
                --   "o1",
                --   "o4-mini",
                --   "claude-3.7-sonnet",
                --   "claude-3.7-sonnet-thought",
                --   "claude-sonnet-4",
                --   "claude-haiku-4.5",
                --   "gpt-4o-2024-08-06",
                --   "gemini-2.0-flash-001",
                --   "gemini-2.5-pro"
                --   "grok-code-fast-1"
                --   "gpt-5-mini"
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
          alias = "jjcommit",
          auto_submit = false,
          adapter = {
            name = "copilot",
            -- model = "claude-3.7-sonnet-thought"
            model = "gpt-4.1"
          }
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
          alias = "translate",
          auto_submit = false,
          -- stop_context_insertion = true,
          user_prompt = true,
          adapter = {
            name = "copilot",
            -- model = "claude-3.7-sonnet-thought"
            model = "gpt-5-mini",
          }
        },
        prompts = {
          {
            role = "system",
            content = function()
              return [[
You are an expert translator specializing in converting text from native Chinese to native English. Your goal is to provide accurate, natural-sounding, and culturally appropriate translations. When given Chinese text, translate it into fluent, idiomatic English. Focus on conveying the original meaning while ensuring the English output reads as if it were originally written by a native English speaker.
]]
            end,
            opts = {
              contains_code = false,
            },
          },
        },
      },
    },
    mcp = {
      servers = {
        ["sequential-thinking"] = {
          cmd = { "mcp-server-sequential-thinking" },
        },
      },
      opts = {
        default_servers = { "sequential-thinking" },
      }
    }
  }
}
