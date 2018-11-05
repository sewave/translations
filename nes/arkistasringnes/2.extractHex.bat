@echo off
set T_FILENAME="TR_Arkista's Ring (U) [!].nes"
set SCRIPTNAME="arkistasringnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
