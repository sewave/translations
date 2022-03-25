@echo off
set T_FILENAME="TR_Cavemania.tzx"
set SCRIPTNAME="cavemaniatzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
