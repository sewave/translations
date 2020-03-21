@echo off
set T_FILENAME="California Games II (E) [!].sms"
set SCRIPTNAME="californiagamesiisms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
