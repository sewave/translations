@echo off
set T_FILENAME="TR_Greendog - The Beached Surfer Dude (UE) [!].bin"
set S_FILENAME="Greendog - The Beached Surfer Dude (UE) [!].bin"
set SCRIPTNAME="greendog"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
