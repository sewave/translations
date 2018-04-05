@echo off
set T_FILENAME="TR_Alien vs Predator - The Last of His Clan (U) [!].gb"
set S_FILENAME="Alien vs Predator - The Last of His Clan (U) [!].gb"
set SCRIPTNAME="alienvspredatorthelastofhisclangb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
