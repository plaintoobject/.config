-- completion

return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  -- use a release tag to download pre-built binaries
  version = '1.*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  -- build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = {
      preset = 'enter',
      ['<C-e>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
    },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = {
      menu = {
        border = 'rounded',
        draw = {
          columns = {
            { "label", "label_description" }
          }
        }
      },
      documentation = { auto_show = false, window = { border = 'rounded' } },
    },
    signature = { window = { border = 'rounded' } },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      providers = {
        lsp = {},
        cmdline = {
          -- ignores cmdline completions when executing shell commands
          enabled = function()
            return vim.fn.getcmdtype() ~= ':' or not vim.fn.getcmdline():match("^[%%0-9,'<>%-]*!")
          end
        },
        path = {
          opts = {
            get_cwd = function(_)
              return vim.fn.getcwd()
            end,
          },
        },
        snippets = {
          opts = {
            should_show_items = function(ctx)
              return ctx.trigger.initial_kind ~= 'trigger_character'
            end
          }
        },
        buffer = {
          opts = {
            get_bufnrs = function()
              return vim.tbl_filter(function(bufnr)
                return vim.bo[bufnr].buftype == ''
              end, vim.api.nvim_list_bufs())
            end
          }
        }
      }
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = {
      implementation = "prefer_rust_with_warning",
      sorts = {
        function(a, b)
          if (a.client_name == nil or b.client_name == nil) or (a.client_name == b.client_name) then
            return
          end
          return b.client_name == 'emmet_ls'
        end,
        -- default sorts
        'score',
        'sort_text',
      },
    },
  },
  opts_extend = { "sources.default" },
}
