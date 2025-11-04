fx_version "cerulean"
game 'gta5'
description "Sandbox Loading Screen"
author "Sandbox"

loadscreen 'web/build/index.html'
loadscreen_manual_shutdown 'yes'

files {
  'web/build/index.html',
  'web/build/**/*',
}

lua54 'yes'
