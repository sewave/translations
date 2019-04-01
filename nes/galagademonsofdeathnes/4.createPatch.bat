@echo off
set T_FILENAME="TR_Galaga - Demons of Death (U) [!].nes"
set S_FILENAME="Galaga - Demons of Death (U) [!].nes"
set SCRIPTNAME="galagademonsofdeathnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
