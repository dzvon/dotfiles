return {
  'olimorris/codecompanion.nvim',
  init = function ()
    vim.keymap.set('n', 'g.', '<cmd>CodeCompanionActions<cr>')
  end,
  opts = {
    -- opts = {
    --   log_level = "DEBUG"
    -- },
    -- display = {
    --   chat = {
    --     show_settings = true,
    --   }
    -- },
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
              default = "claude-sonnet-4",
              -- choices = {
              --   "gpt-4.1",
              --   "o3-mini",
              --   "o1",
              --   "o4-mini",
              --   "claude-3.7-sonnet",
              --   "claude-3.7-sonnet-thought",
              --   "claude-sonnet-4",
              --   "gpt-4o-2024-08-06",
              --   "gemini-2.0-flash-001",
              --   "gemini-2.5-pro"
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
          short_name = "translate",
          auto_submit = false,
          -- stop_context_insertion = true,
          user_prompt = true,
          adapter = {
            name = "copilot",
            -- model = "claude-3.7-sonnet-thought"
            model = "gemini-2.0-flash-001"
          }
        },
        prompts = {
          {
            role = "system",
            content = function()
              return [[
You are an expert translator specializing in converting text from native Chinese to native English. Your goal is to provide accurate, natural-sounding, and culturally appropriate translations. When given Chinese text, translate it into fluent, idiomatic English. Focus on conveying the original meaning while ensuring the English output reads as if it were originally written by a native English speaker.


Your *only* task is to translate the provided text from native Chinese to native English. When you receive Chinese text, your response *must be* the English translation. Do not engage in conversation, ask questions, or provide additional commentary. Focus on providing accurate, natural-sounding, and culturally appropriate translations that read as if they were originally written by a native English speaker.
]]
            end,
            opts = {
              contains_code = false,
            },
          },
        },
      },
    },
    extensions = {
      mcphub = {
        callback = "mcphub.extensions.codecompanion",
        opts = {
          -- MCP Tools
          make_tools = true,              -- Make individual tools (@server__tool) and server groups (@server) from MCP servers
          show_server_tools_in_chat = true, -- Show individual tools in chat completion (when make_tools=true)
          add_mcp_prefix_to_tool_names = false, -- Add mcp__ prefix (e.g `@mcp__github`, `@mcp__neovim__list_issues`)
          show_result_in_chat = true,      -- Show tool results directly in chat buffer
          format_tool = nil,               -- function(tool_name:string, tool: CodeCompanion.Agent.Tool) : string Function to format tool names to show in the chat buffer
          -- MCP Resources
          make_vars = true,                -- Convert MCP resources to #variables for prompts
          -- MCP Prompts
          make_slash_commands = true,      -- Add MCP prompts as /slash commands
        }
      }
    }
  }
}
