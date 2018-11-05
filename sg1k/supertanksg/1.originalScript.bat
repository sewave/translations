@echo off
set T_FILENAME="Super Tank (SG-1000) [!].sg"
set SCRIPTNAME="supertanksg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
