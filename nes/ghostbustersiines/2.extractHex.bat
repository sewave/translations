@echo off
set T_FILENAME="TR_Ghostbusters II (U) [!].nes"
set SCRIPTNAME="ghostbustersiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
