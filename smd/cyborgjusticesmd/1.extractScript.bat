@echo off
set T_FILENAME="Cyborg Justice (USA, Europe).md"
set SCRIPTNAME="cyborgjusticesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
