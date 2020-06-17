@echo off
set T_FILENAME="TR_BurgerTime Deluxe (World).gb"
set SCRIPTNAME="burgertimedeluxegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
