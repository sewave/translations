@echo off
set T_FILENAME="TR_Hokuto no Ken 3 - Shin Seiki Souzou Seiken Restuden (J) [!].nes"
set S_FILENAME="Hokuto no Ken 3 - Shin Seiki Souzou Seiken Restuden (J) [!].nes"
set SCRIPTNAME="hokutonoken3shinseikisouzouseikenrestudennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
