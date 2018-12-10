@echo off
set T_FILENAME="TR_Jungle Book, The (U).smc"
set SCRIPTNAME="junglebooksfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
