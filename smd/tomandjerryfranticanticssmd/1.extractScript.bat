@echo off
set T_FILENAME="Tom and Jerry - Frantic Antics! (USA).md"
set SCRIPTNAME="tomandjerryfranticanticssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
