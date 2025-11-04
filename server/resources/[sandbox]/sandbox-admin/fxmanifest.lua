fx_version("cerulean")
game("gta5")
lua54("yes")
client_script("@sandbox-base/exports/cl_error.lua")
client_script("@sandbox-pwnzor/client/check.lua")

-- shared_scripts {
--     'config/*.lua'
-- }

client_scripts({
	"@ox_lib/init.lua",
	"client/client.lua",
	"client/attach.lua",
	"client/noclip/*.lua",
	-- 'client/menu.lua',
	-- 'client/shitty_menu.lua',
	"client/nui.lua",
	"client/ids.lua",
	"client/nuke.lua",
	"client/damage_test.lua",
	"client/doorlock.lua",
})

server_scripts({
	"@oxmysql/lib/MySQL.lua",
	"server/doorlock.lua",
	"server/callbacks.lua",
	"server/dashboard.lua",
	"server/server.lua",
})

ui_page("ui/dist/index.html")

files({ "ui/dist/index.html", "ui/dist/*.js" })
