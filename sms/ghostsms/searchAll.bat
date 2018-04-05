@echo off 
set T_FILENAME="Ghostbusters (UE) [!].sms"
set SCRIPTNAME="ghostsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 3C-7F-FF-28
pause 
