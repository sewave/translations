@echo off
set T_FILENAME="Ghostbusters II (U) [!].nes"
set SCRIPTNAME="ghostbustersiines"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
