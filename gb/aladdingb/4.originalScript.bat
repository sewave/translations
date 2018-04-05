@echo off
set T_FILENAME="Aladdin (U) [S][!].gb"
set SCRIPTNAME="aladdingb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
