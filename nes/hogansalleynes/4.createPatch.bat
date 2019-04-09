@echo off
set T_FILENAME="TR_Hogan's Alley (W) [!].nes"
set S_FILENAME="Hogan's Alley (W) [!].nes"
set SCRIPTNAME="hogansalleynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
