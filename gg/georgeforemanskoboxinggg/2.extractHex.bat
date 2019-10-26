@echo off
set T_FILENAME="TR_George Foreman's KO Boxing (USA, Europe).gg"
set SCRIPTNAME="georgeforemanskoboxinggg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
