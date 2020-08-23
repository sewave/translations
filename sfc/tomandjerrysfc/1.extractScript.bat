@echo off
set T_FILENAME="Tom and Jerry (USA).sfc"
set SCRIPTNAME="tomandjerrysfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
