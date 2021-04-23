@echo off
set T_FILENAME="STING.nes"
set SCRIPTNAME="stingnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
