@echo off
set T_FILENAME="TR_Streets of Rage 2 (E) [!].sms"
set S_FILENAME="Streets of Rage 2 (E) [!].sms"
set SCRIPTNAME="sor2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
