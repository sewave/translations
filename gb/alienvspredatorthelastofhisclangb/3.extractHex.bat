@echo off
set T_FILENAME="TR_Alien vs Predator - The Last of His Clan (U) [!].gb"
set SCRIPTNAME="alienvspredatorthelastofhisclangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D210:60,1C570:30,AEA0-AFE0,1DD80:40,1F100:10
pause
