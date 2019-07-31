@echo off
set T_FILENAME="TR_Master of Monsters (U) [!].bin"
set SCRIPTNAME="masterofmonsterssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
