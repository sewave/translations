@echo off
set T_FILENAME="TR_James Bond 007 (USA).col"
set SCRIPTNAME="jamesbond007col"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
