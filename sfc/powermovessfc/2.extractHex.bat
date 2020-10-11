@echo off
set T_FILENAME="TR_Power Moves (USA).sfc"
set SCRIPTNAME="powermovessfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
