@echo off
set T_FILENAME="TR_Ninja Gaiden Shadow (U).gb"
set SCRIPTNAME="ninjagaidenshadowgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
