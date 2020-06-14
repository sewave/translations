@echo off
set T_FILENAME="TR_Bugs Bunny in Double Trouble (U) [!].gg"
set SCRIPTNAME="bugsbunnyindoubletroublegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
