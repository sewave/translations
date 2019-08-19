@echo off
set T_FILENAME="Incredible Crash Dummies, The (E) [!].sms"
set SCRIPTNAME="incrediblecrashdummiesthesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
