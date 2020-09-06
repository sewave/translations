@echo off
set T_FILENAME="Izzy's Quest for the Olympic Rings (USA, Europe).md"
set SCRIPTNAME="izzysquestfortheolympicringssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
