@echo off
set T_FILENAME="TR_Wild Gunman (U) (PRG0) [!].nes"
set S_FILENAME="Wild Gunman (U) (PRG0) [!].nes"
set SCRIPTNAME="wildgunmannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
