@echo off
set T_FILENAME="VR Troopers (USA, Europe).md"
set SCRIPTNAME="vrtrooperssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
