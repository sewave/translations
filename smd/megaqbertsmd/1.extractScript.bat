@echo off
set T_FILENAME="Mega Qbert.bin"
set SCRIPTNAME="megaqbertsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
