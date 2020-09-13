@echo off
set T_FILENAME="Zero Tolerance (USA, Europe).md"
set SCRIPTNAME="zerotolerancesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
