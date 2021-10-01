@echo off
set T_FILENAME="TR_Agro Soar (Australia).gb"
set SCRIPTNAME="agrosoargb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
