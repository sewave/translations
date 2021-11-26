@echo off
set T_FILENAME="TR_Bonnie_and_Clyde.tap"
set SCRIPTNAME="bonnieandclydetap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
