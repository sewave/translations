@echo off
set T_FILENAME="Safari Hunt (SG-1000) [!].sg"
set SCRIPTNAME="safarihuntsg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
