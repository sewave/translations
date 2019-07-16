@echo off
set T_FILENAME="Champion Billards (SG-1000) [!].sg"
set SCRIPTNAME="championbillardssg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
