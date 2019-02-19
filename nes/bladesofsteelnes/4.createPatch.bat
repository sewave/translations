@echo off
set T_FILENAME="TR_Blades of Steel (U) [!].nes"
set S_FILENAME="Blades of Steel (U) [!].nes"
set SCRIPTNAME="bladesofsteelnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
