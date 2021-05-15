@echo off
set T_FILENAME="aepd.bin"
set SCRIPTNAME="aepdsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
