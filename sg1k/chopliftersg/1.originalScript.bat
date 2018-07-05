@echo off
set T_FILENAME="Choplifter (SG-1000) [!].sg"
set SCRIPTNAME="chopliftersg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
