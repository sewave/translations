@echo off
set T_FILENAME="TR_Level 5.tzx"
set SCRIPTNAME="level5tzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
