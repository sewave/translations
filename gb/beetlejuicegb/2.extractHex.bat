@echo off
set T_FILENAME="TR_Beetlejuice (USA).gb"
set SCRIPTNAME="beetlejuicegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D14B:10,D0FB:10,14EA5:10,7F6C:10,7FBC:10
pause
