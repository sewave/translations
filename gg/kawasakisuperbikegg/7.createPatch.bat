@echo off
set T_FILENAME="TR_Kawasaki Superbike Challenge (U) [!].gg"
set S_FILENAME="Kawasaki Superbike Challenge (U) [!].gg"
set SCRIPTNAME="kawasakisuperbikegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
