@echo off
set T_FILENAME="TR_Blades of Steel (E) [!].gb"
set S_FILENAME="Blades of Steel (E) [!].gb"
set SCRIPTNAME="bladesofsteelgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
