@echo off
set T_FILENAME="TR_Cookie (1983)(Ultimate).tzx"
set SCRIPTNAME="cookietzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B8A:10,3A2A:80
pause
