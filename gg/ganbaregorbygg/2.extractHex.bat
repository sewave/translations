@echo off
set T_FILENAME="TR_Ganbare Gorby! (Japan).gg"
set SCRIPTNAME="ganbaregorbygg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FC40:20,10EB4:40,10B34:20,15BA4:400
pause
