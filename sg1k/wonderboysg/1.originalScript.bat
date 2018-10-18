@echo off
set T_FILENAME="Wonder Boy (SG-1000) [!].sg"
set SCRIPTNAME="wonderboysg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
