@echo off
set T_FILENAME="TR_Dino Land (U) [!].bin"
set S_FILENAME="Dino Land (U) [!].bin"
set SCRIPTNAME="dinolandsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
