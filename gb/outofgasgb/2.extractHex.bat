@echo off
set T_FILENAME="TR_Out of Gas (USA).gb"
set SCRIPTNAME="outofgasgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
