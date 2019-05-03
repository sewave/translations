@echo off
set T_FILENAME="TR_Antarctic Adventure (1984) (Konami) (J).rom"
set SCRIPTNAME="antarcticadventurerom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
