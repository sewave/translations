@echo off
set T_FILENAME="TR_Shaq Fu (U) [!].gg"
set SCRIPTNAME="shaqfugg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6CD80:20
pause
