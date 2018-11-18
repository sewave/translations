@echo off
set T_FILENAME="TR_High School! Kimengumi (J) [T+ENG].sms"
set SCRIPTNAME="highschoolkimengumisms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 128DD:80
pause
