@echo off 
set T_FILENAME="TR_Batman Returns (U) [!].gg"
set SCRIPTNAME="batretgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
