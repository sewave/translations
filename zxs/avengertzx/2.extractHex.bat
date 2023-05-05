@echo off
set T_FILENAME="TR_Avenger.tzx"
set SCRIPTNAME="avengertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5EBE:28
pause
