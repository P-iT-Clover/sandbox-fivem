name("Sandbox RP Framework Restaurant")
author("[Alzar, Dr Nick]")
lua54("yes")
fx_version("cerulean")
game("gta5")
client_script("@sandbox-base/exports/cl_error.lua")
client_script("@sandbox-pwnzor/client/check.lua")

client_scripts({
	"client/**/*.lua",
})

server_scripts({
	"configs/config.lua",
	"configs/restaurants/**/*.lua",
	"server/**/*.lua",
})
