@echo off
set T_FILENAME="TR_Tom and Jerry - The Movie (E).sms"
set S_FILENAME="Tom and Jerry - The Movie (E).sms"
set SCRIPTNAME="tomandjerrythemoviesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
