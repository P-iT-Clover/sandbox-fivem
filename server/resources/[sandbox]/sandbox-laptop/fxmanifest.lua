name("Sandbox RP Farmework Laptop")
description("Sandbox RP FrameworkLaptop")
author("[Alzar, Dr Nick]")
version("v1.0.0")
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
	"client/*.lua",
	"client/apps/**/*.lua",
})
shared_scripts({
	"config.lua",
})

server_scripts({
	"@oxmysql/lib/MySQL.lua",
	"server/*.lua",
	"server/apps/**/*.lua",
})
