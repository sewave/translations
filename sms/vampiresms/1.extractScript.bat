@echo off
set T_FILENAME="Vampire (E) [!].sms"
set SCRIPTNAME="vampiresms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
