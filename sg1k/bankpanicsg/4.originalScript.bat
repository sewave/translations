@echo off
set T_FILENAME="Bank Panic (SG-1000) [!].sg"
set SCRIPTNAME="bankpanicsg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
