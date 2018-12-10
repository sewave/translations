@echo off 
set T_FILENAME="TR_James Pond 3 - Operation Starfish (U) [!].gg"
set S_FILENAME="James Pond 3 - Operation Starfish (U) [!].gg"
set SCRIPTNAME="jamespond3gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
