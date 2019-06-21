@echo off
set T_FILENAME="Terminator 2 - The Arcade Game (E) [!].sms"
set SCRIPTNAME="terminator2arcadesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
