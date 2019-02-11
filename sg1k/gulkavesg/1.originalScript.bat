@echo off
set T_FILENAME="Gulkave (SG-1000) [!].sg"
set SCRIPTNAME="gulkavesg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
