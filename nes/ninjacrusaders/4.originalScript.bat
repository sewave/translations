@echo off
set T_FILENAME="Ninja Crusaders (U) [!].nes"
set SCRIPTNAME="ninjacrusaders"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
