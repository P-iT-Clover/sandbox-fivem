fx_version("cerulean")
games({ "gta5" }) 
lua54("yes")
client_script("@sandbox-base/exports/cl_error.lua")
client_script("@sandbox-pwnzor/client/check.lua")
server_script("@oxmysql/lib/MySQL.lua")

description("Sandbox RP Framework Evidence System")
name("Sandbox RP Framework: sandbox-evidence")
author("Dr Nick")
version("v1.0.0")

server_scripts({
	'@oxmysql/lib/MySQL.lua',
	"server/**/*.lua",
})

client_scripts({
	"client/**/*.lua",
})

shared_scripts({
	"shared/**/*.lua",
})
