@echo off
set T_FILENAME="ot12.bin"
set SCRIPTNAME="oldtowers12smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
