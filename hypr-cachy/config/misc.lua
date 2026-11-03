hl.config({
	dwindle = {
		preserve_split = true,
	},
	ecosystem = {
		no_update_news = true,
		no_donation_nag = true,
	},
	misc = {
		col = {
			splash = CACHYLGREEN,
		},
		middle_click_paste = false,
		enable_swallow = false,
		-- swallow_regex = "(kitty|ghostty|[Kk]onsole|Alacritty|gnome-terminal|xfce[0-9]?-terminal)",
		vrr = 3,
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
	render = {
		direct_scanout = 2,
	},
	xwayland = {
		enabled = true,
		force_zero_scaling = true,
		use_nearest_neighbor = true,
	},
	input = {
		follow_mouse = 2,
		float_switch_override_focus = 2,
	},
})
