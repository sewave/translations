@echo off
set T_FILENAME="Castelian (U) [!].nes"
set SCRIPTNAME="casteliannes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
