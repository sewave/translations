@echo off
set T_FILENAME="TR_Fantasy Zone Gear (JU) [!].gg"
set SCRIPTNAME="fantasyzonegeargg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 12D32:EDD
pause
