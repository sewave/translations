@echo off
set T_FILENAME="Zippy Race (SG-1000) [!].sg"
set SCRIPTNAME="zippyracesg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
