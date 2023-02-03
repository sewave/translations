@echo off
set T_FILENAME="TR_Advanced Dungeons & Dragons - Dragons of Flame (Japan) [T+ENG].nes"
set SCRIPTNAME="adandddragonsofflamenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36910:200,3ACF0:20,360D0:40,36170:20
pause
