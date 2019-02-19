@echo off
set T_FILENAME="TR_Ikari III - The Rescue (U) [!].nes"
set S_FILENAME="Ikari III - The Rescue (U) [!].nes"
set SCRIPTNAME="ikariiiitherescuenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
