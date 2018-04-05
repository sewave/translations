@echo off 
set T_FILENAME="Prince of Persia (E).sms"
set SCRIPTNAME="ppersiasms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
