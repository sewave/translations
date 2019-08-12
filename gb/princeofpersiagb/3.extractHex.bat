@echo off
set T_FILENAME="TR_Prince of Persia (U).gb"
set SCRIPTNAME="princeofpersiagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
