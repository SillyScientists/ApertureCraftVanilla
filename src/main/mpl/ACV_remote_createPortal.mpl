# Description: Creates a Portal specified by SCV-color-Color-ACV_Interface
# Params: AS-ACV_remote_createPortal_PARAM, SCV-color-Color-ACV_Interface
# Return:



process ACV_remote_createPortal (
/execute @e[name=ACV_online] ~ ~ ~ /testforblock ~ ~ ~ redstone_block
conditional: /setblock ${this + 4} redstone_block
/execute @e[name=ACV_online] ~ ~ ~ /setblock ~ ~ ~ stone
/entitydata @e[name=ACV_online] {CustomName:"ACV_online_intercepted"}
/summon ArmorStand ${this + 1} {CustomName:"ACV_online",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}

skip

impulse: /setblock ${this - 1} stone
/kill @e[name=ACV_online,r=2]
/kill @e[name=ACV_Main]
/entitydata @e[name=ACV_online_intercepted] {CustomName:"ACV_online"}
/scoreboard players operation Color ACV_Internal = Color ACV_Interface
/entitydata @e[name=ACV_remote_createPortal_PARAM] {CustomName:"ACV_Main"}
/execute @e[name=ACV_processMain] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/summon ArmorStand ${this + 1} {CustomName:"ACV_createPortal",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}

skip

impulse: /setblock ${this - 1} stone
/kill @e[name=ACV_createPortal,r=2]
/scoreboard players tag @e[name=ACV_Up] add ACV_DV_PARAM
/scoreboard players tag @e[name=ACV_Down] add ACV_DV_PARAM
/scoreboard players tag @e[name=ACV_South] add ACV_DV_PARAM
/scoreboard players tag @e[name=ACV_East] add ACV_DV_PARAM
/scoreboard players tag @e[name=ACV_North] add ACV_DV_PARAM
/scoreboard players tag @e[name=ACV_West] add ACV_DV_PARAM
)
