@echo off
set T_FILENAME="TR_Streets of Rage (E) [a1].sms"
set SCRIPTNAME="sorsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BDE8:40,66E84:80,67084:40,76060-76120,77F60:60,77EE0:20
pause
