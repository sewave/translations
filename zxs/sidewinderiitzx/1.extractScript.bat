@echo off
set T_FILENAME="Sidewinder II (Mastertronic Plus).tzx"
set SCRIPTNAME="sidewinderiitzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
