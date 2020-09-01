@echo off
set T_FILENAME="TR_Super Thunder Blade (World).md"
set SCRIPTNAME="superthunderbladesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
