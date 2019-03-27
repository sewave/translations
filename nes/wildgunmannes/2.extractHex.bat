@echo off
set T_FILENAME="TR_Wild Gunman (U) (PRG0) [!].nes"
set SCRIPTNAME="wildgunmannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
