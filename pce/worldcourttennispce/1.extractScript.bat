@echo off
set T_FILENAME="World Court Tennis (USA).pce"
set SCRIPTNAME="worldcourttennispce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
