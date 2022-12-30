@echo off
set T_FILENAME="TR_Zoboomafoo - Playtime in Zobooland (USA).gbc"
set SCRIPTNAME="zoboomafooplaytimeinzoboolandgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
