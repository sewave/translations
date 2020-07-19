@echo off
set T_FILENAME="TR_Lion King, The (USA).sfc"
set SCRIPTNAME="lionkingthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 40A4F:80
pause
