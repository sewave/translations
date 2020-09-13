@echo off
set T_FILENAME="TR_Boomer's Adventure in ASMIK World (USA).gb"
set SCRIPTNAME="boomersadventureinasmikworldgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
