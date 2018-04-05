@echo off 
set T_FILENAME="TR_Robocop 3 (U) [!].gg"
set S_FILENAME="Robocop 3 (U) [!].gg"
set SCRIPTNAME="robocop3gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
