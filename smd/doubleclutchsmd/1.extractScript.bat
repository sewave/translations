@echo off
set T_FILENAME="Double Clutch (Europe).md"
set SCRIPTNAME="doubleclutchsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
