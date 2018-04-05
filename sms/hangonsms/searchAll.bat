@echo off 
set T_FILENAME="Hang-On (E) [!].sms"
set SCRIPTNAME="hangonsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00
pause 
