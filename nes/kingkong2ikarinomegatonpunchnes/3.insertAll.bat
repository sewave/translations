@echo off
set T_FILENAME="TR_King Kong 2 - Ikari no Megaton Punch (Japan) [T+ENG].nes"
set S_FILENAME="King Kong 2 - Ikari no Megaton Punch (Japan) [T+ENG].nes"
set SCRIPTNAME="kingkong2ikarinomegatonpunchnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
