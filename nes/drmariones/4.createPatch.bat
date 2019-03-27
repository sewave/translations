@echo off
set T_FILENAME="TR_Dr. Mario (JU) (PRG1) [!].nes"
set S_FILENAME="Dr. Mario (JU) (PRG1) [!].nes"
set SCRIPTNAME="drmariones"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
