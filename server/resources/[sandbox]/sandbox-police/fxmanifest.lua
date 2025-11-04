name("Sandbox RP Framework Emergency Services")
author("[Alzar]")
lua54("yes")
fx_version("cerulean")
game("gta5")
client_script("@sandbox-base/exports/cl_error.lua")
client_script("@sandbox-pwnzor/client/check.lua")

client_scripts({
	"client/**/*.lua",
})

server_scripts({
	'@oxmysql/lib/MySQL.lua',
	"server/**/*.lua",
})


shared_scripts({
	"@ox_lib/init.lua",
	"shared/**/*.lua",
})
