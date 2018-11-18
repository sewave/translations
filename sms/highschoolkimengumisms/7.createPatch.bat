@echo off
set T_FILENAME="TR_High School! Kimengumi (J) [T+ENG].sms"
set S_FILENAME="High School! Kimengumi (J) [!].sms"
set SCRIPTNAME="highschoolkimengumisms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
