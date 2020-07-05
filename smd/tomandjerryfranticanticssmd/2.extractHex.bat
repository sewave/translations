@echo off
set T_FILENAME="TR_Tom and Jerry - Frantic Antics! (USA).md"
set SCRIPTNAME="tomandjerryfranticanticssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
