# Cod4-level-hack-mod
Level Hack Server Mod for Call of Duty 4
- You can see the mod in action: https://www.youtube.com/watch?v=JR1TWOGiYuE

# Installation
You need a CoD4X server to run this mod:
http://www.cod4x.me/

- Set up your server to run without mod
- Add these additional gsc (in src/ folder) files to override the server-side scripts
- Set up your server to run on TDM (g_gametype "war") and only on Crash (map mp_crash)
- Enjoy your own level hack server!

Optional:
- You can modify the parameter of these functions: 'self tickprint("TEXT");' in "settings/level55.gsc" to place your own messages/ads/etc. 
 - You **should NOT** remove parts where original author name is present! e.g. 'self iprintln("^3Level 55 mod by Shuffni!");'!
 - You **CAN** add yourself to authors if you want!
