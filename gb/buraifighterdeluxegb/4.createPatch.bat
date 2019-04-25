@echo off
set T_FILENAME="TR_Burai Fighter Deluxe (UE) [!].gb"
set S_FILENAME="Burai Fighter Deluxe (UE) [!].gb"
set SCRIPTNAME="buraifighterdeluxegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
