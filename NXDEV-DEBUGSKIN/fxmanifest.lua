--------------------------------------------------------------------
--2024-04-02--   NXDEV   --MADE BY NXICZO--   NXDEV   --2024-04-02--
--------------------------------------------------------------------

fx_version "cerulean"

author "NIXCZO | NXDEV"

games { "gta5" };

lua54 "yes"


--- Client FILE
client_scripts {
    "client.lua"
}


--- SERVER FILE
server_script {
    "server.lua",
    "clogs.lua"
}

dependencies {
    "es_extended"
}
server_scripts { '@mysql-async/lib/MySQL.lua' }