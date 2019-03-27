@echo off
set T_FILENAME="TR_James Bond 007 (SG-1000) [!].sg"
set SCRIPTNAME="jamesbond007sg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
