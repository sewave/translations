@echo off
set T_FILENAME="NBA Jam (E) (Prototype).sms"
set SCRIPTNAME="nbajamsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
