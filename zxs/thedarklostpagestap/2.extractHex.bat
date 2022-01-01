@echo off
set T_FILENAME="TR_The_Dark_Lost_Pages.tap"
set SCRIPTNAME="thedarklostpagestap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
