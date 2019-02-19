@echo off
set T_FILENAME="TR_Ikari Warriors (U) (PRG1) [!].nes"
set S_FILENAME="Ikari Warriors (U) (PRG1) [!].nes"
set SCRIPTNAME="ikariwarriorsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
