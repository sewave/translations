@echo off
set T_FILENAME="Star Force (SG-1000) [!].sg"
set SCRIPTNAME="starforcesg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
