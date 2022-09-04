local awful = require("awful")
local beautiful = require("beautiful")

local terminal = "x-terminal-emulator"

myawesomemenu = {
	{ "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
	{ "manual", terminal .. " -e man awesome" },
	{ "edit config", editor_cmd .. " " .. awesome.conffile },
	{ "restart", awesome.restart  },
	{ "quit", function() awesome.quit() end },
}

local menu_awesome = { "awesome", myawesomemenu, beautiful.awesome_icon }
local menu_terminal = { "open terminal", terminal }

mymainmenu = awful.menu({
		items = {
							menu_awesome,
							menu_terminal,
						}
})

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
																		 menu = mymainmenu })

return mylauncher
