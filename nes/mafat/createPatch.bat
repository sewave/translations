@echo off 
set T_FILENAME="TR_Mafat Conspiracy - Golgo 13 (U) [!].nes"
set S_FILENAME="Mafat Conspiracy - Golgo 13 (U) [!].nes"
set SCRIPTNAME="mafat"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
