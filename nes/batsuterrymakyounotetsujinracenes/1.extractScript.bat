@echo off
set T_FILENAME="Batsu & Terry - Makyou no Tetsujin Race (Japan) [T+ENG].nes"
set SCRIPTNAME="batsuterrymakyounotetsujinracenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
