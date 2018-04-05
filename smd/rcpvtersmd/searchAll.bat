@echo off 
set T_FILENAME="Robocop Versus The Terminator (U) [!].bin"
set SCRIPTNAME="rcpvtersmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 00 
pause 
