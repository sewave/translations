@echo off
set T_FILENAME="Paperboy (UE) [!].bin"
set SCRIPTNAME="paperboysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
