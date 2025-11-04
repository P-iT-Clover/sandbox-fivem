fx_version("cerulean")
games({ "gta5" })
lua54("yes")
client_script("@sandbox-base/exports/cl_error.lua")
client_script("@sandbox-pwnzor/client/check.lua")

description("Sandbox RP Framework Wheel Fitment")
name("Sandbox RP Framework: sandbox-fitment")
author("Dr Nick")
version("v1.0.0")


client_scripts({
	"client/**/*.lua",
})

server_scripts({
	"server/**/*.lua",
})
