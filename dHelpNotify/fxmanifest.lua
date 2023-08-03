fx_version 'adamant'

game 'gta5'

lua54 'yes'

version '1.0.0'

author 'DzikiPies'

ui_page 'html/index.html'
files { 
'html/index.html', 
'html/style.css', 
'html/script.js',
'html/sound.mp3'
}

shared_scripts {'@es_extended/imports.lua',
'config.lua',
'@ox_lib/init.lua'}

client_scripts {
    'client/client.lua'
}

