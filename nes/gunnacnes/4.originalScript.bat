@echo off
set T_FILENAME="Gun-Nac (U) [!].nes"
set SCRIPTNAME="gunnacnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
