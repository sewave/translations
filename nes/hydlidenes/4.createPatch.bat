@echo off
set T_FILENAME="TR_Hydlide (U) [!].nes"
set S_FILENAME="Hydlide (U) [!].nes"
set SCRIPTNAME="hydlidenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
