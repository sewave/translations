@echo off
set T_FILENAME="TR_Pizza Bar.tzx"
set SCRIPTNAME="pizzabartzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
