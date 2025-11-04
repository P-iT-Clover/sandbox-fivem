name("Sandbox RP Framework - Clothing System")
author("[Alzar]")
lua54("yes")
fx_version("cerulean")
game("gta5")
client_script("@sandbox-base/exports/cl_error.lua")
client_script("@sandbox-pwnzor/client/check.lua")

ui_page("ui/dist/index.html")

files({
	"ui/dist/*.*",
})

client_scripts({
	"storeData.lua",
	"tattoos.lua",
	"config.lua",
	"utils/*.lua",
	"client/**/*.lua",
})

server_scripts({
	'@oxmysql/lib/MySQL.lua',
	"config.lua",
	"utils/*.lua",
	"server/**/*.lua",
})
