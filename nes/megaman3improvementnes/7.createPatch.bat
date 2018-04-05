@echo off
set T_FILENAME="TR_Megaman3Improvement (U) [!].nes"
set S_FILENAME="Megaman III (U) [!].nes"
set SCRIPTNAME="megaman3improvementnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
