@echo off
set T_FILENAME="TR_Missile Command (U) [M][!].gb"
set SCRIPTNAME="missilecommandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4BE1:10
pause
