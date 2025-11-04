fx_version("cerulean")
games({ "gta5" })
lua54("yes")
client_script("@sandbox-base/exports/cl_error.lua")
client_script("@sandbox-pwnzor/client/check.lua")

description("Sandbox RP Framework Businesses Script")
name("Sandbox RP Framework: sandbox-businesses")
author("Dr Nick")
version("v1.0.0")

client_scripts({
	"client/**/*.lua",
})

server_scripts({
	'@oxmysql/lib/MySQL.lua',
	"config/sv_config.lua",
	"config/businesses/*.lua",
	"server/**/*.lua",
})

shared_scripts({
	"shared/**/*.lua",
})

files({
	"dui/bowling/app.js",
	"dui/bowling/index.html",
	"dui/bowling/*.png",
	"dui/bowling/gifs/*.gif",
	"dui/tvs/app.js",
	"dui/tvs/index.html",
})
