@echo off
set T_FILENAME="Swamp Thing (U) [!].gb"
set SCRIPTNAME="swampthinggb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
