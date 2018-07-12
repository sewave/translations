@echo off
set T_FILENAME="TR_Streets of Rage (E) [a1].sms"
set S_FILENAME="Streets of Rage (E) [a1].sms"
set SCRIPTNAME="sorsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
