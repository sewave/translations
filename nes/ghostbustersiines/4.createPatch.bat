@echo off
set T_FILENAME="TR_Ghostbusters II (U) [!].nes"
set S_FILENAME="Ghostbusters II (U) [!].nes"
set SCRIPTNAME="ghostbustersiines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
