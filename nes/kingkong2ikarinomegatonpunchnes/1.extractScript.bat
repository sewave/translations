@echo off
set T_FILENAME="King Kong 2 - Ikari no Megaton Punch (Japan) [T+ENG].nes"
set SCRIPTNAME="kingkong2ikarinomegatonpunchnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
