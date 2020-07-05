@echo off
set T_FILENAME="TR_Tom and Jerry - Frantic Antics! (USA, Europe).gb"
set SCRIPTNAME="tomandjerryfranticanticsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
