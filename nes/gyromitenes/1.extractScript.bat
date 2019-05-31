@echo off
set T_FILENAME="Gyromite (W) [!].nes"
set SCRIPTNAME="gyromitenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
