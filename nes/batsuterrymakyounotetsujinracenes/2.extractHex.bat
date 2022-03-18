@echo off
set T_FILENAME="TR_Batsu & Terry - Makyou no Tetsujin Race (Japan) [T+ENG].nes"
set SCRIPTNAME="batsuterrymakyounotetsujinracenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C696:50,D026:10,142C6:60,106E0:40,E79D:80,14C96:80,17366:80
pause
