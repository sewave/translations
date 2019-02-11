@echo off
set T_FILENAME="TR_Bee 52 (Camerica) [!].nes"
set SCRIPTNAME="bee52nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
