@echo off
set T_FILENAME="TR_Great Basketball (JUEB) [!].sms"
set SCRIPTNAME="greatbasketballsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1BC40:20
pause
