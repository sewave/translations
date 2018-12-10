@echo off 
set T_FILENAME="TR_James Pond 3 - Operation Starfish (U) [!].gg"
set SCRIPTNAME="jamespond3gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
