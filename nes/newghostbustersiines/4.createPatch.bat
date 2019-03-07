@echo off
set T_FILENAME="TR_New Ghostbusters II (E) [!].nes"
set S_FILENAME="New Ghostbusters II (E) [!].nes"
set SCRIPTNAME="newghostbustersiines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
