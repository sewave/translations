@echo off 
set T_FILENAME="Populous (E) [!].sms"
set SCRIPTNAME="populoussms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
