@echo off
set T_FILENAME="TR_Cauldron.tzx"
set SCRIPTNAME="cauldrontzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
