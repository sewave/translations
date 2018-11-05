@echo off
set T_FILENAME="TR_Tom and Jerry - The Movie (E).sms"
set SCRIPTNAME="tomandjerrythemoviesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23760:600,32740:20,327E0:20,24000:600
pause
