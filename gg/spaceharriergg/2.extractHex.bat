@echo off
set T_FILENAME="TR_Space Harrier (JU) [!].gg"
set SCRIPTNAME="spaceharriergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
