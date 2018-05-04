@echo off
set T_FILENAME="TR_Amazing Spider-Man 2, The (UE) [!].gb"
set S_FILENAME="Amazing Spider-Man 2, The (UE) [!].gb"
set SCRIPTNAME="amazingspiderman2thegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
