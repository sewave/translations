@echo off
set T_FILENAME="TR_Dragon's Fury (UE) [!].bin"
set SCRIPTNAME="dragonsfurysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
