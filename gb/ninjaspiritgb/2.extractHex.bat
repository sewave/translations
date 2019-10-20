@echo off
set T_FILENAME="TR_Ninja Spirit (J).gb"
set SCRIPTNAME="ninjaspiritgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E08A:100,E30A:180,8020:50,8160:10
pause
