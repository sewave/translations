@echo off
set T_FILENAME="Xevious (U) [!].nes"
set SCRIPTNAME="xeviousnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
