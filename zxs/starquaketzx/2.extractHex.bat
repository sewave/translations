@echo off
set T_FILENAME="TR_Starquake.tzx"
set SCRIPTNAME="starquaketzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
