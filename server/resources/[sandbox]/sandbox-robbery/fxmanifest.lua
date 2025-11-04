name("Sandbox RP Framework Robbery")
author("[Alzar, Dr Nick]")

lua54("yes")
fx_version("cerulean")
game("gta5")
client_script("@sandbox-base/exports/cl_error.lua")
client_script("@sandbox-pwnzor/client/check.lua")

client_scripts({
	"client/**/*.lua",
})
shared_scripts({
	"shared/**/*.lua",
})

server_scripts({
	"server/**/*.lua",
})
