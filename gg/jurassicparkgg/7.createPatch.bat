@echo off
set T_FILENAME="TR_Jurassic Park (UE) [!].gg"
set S_FILENAME="Jurassic Park (UE) [!].gg"
set SCRIPTNAME="jurassicparkgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
