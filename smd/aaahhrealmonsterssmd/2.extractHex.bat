@echo off
set T_FILENAME="TR_Aaahh!!! Real Monsters (USA).md"
set SCRIPTNAME="aaahhrealmonsterssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
