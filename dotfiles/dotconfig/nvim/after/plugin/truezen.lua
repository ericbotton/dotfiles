require("true-zen").setup {
	modes = { -- configurations per mode
		ataraxis = {
			shade = "dark",
			backdrop = 0, -- ratio between 0 and 1
			minimum_writing_area = { -- minimum size of main window
				width = 5,
				height = 5,
			},
			quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
			padding = { -- padding windows
				left = 70,
				right = 70,
				top = 10,
				bottom = 10,
			},
			callbacks = { -- run functions when opening/closing Ataraxis mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		minimalist = {
			ignored_buf_types = { "nofile" }, -- save current options from any window except ones displaying these kinds of buffers
			options = { -- options to be disabled when entering Minimalist mode
				number = false,
				relativenumber = false,
				showtabline = 0,
				signcolumn = "no",
				statusline = "",
				cmdheight = 1,
				laststatus = 0,
				showcmd = false,
				showmode = false,
				ruler = false,
				numberwidth = 1
			},
			callbacks = { -- run functions when opening/closing Minimalist mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		narrow = {
			--- change the style of the fold lines. Set it to:
			--- `informative`: to get nice pre-baked folds
			--- `invisible`: hide them
			--- function() end: pass a custom func with your fold lines. See :h foldtext
			folds_style = "informative",
			run_ataraxis = true, -- display narrowed text in a Ataraxis session
			callbacks = { -- run functions when opening/closing Narrow mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		focus = {
			callbacks = { -- run functions when opening/closing Focus mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		}
	},
	integrations = {
		tmux = true, -- hide tmux status bar in (minimalist, ataraxis)
		kitty = { -- set `allow_remote_control socket-only` and `listen_on unix:/tmp/kitty` in kitty config
			enabled = true,
			font = "+2"
		},
		twilight = false, -- enable twilight (ataraxis)
		lualine = false -- hide nvim-lualine (ataraxis)
	}
}
