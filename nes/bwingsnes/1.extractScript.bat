@echo off
set T_FILENAME="B-Wings (J) [!].nes"
set SCRIPTNAME="bwingsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
