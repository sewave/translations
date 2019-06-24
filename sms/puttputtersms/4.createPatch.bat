@echo off
set T_FILENAME="TR_Putt & Putter (E) [!].sms"
set S_FILENAME="Putt & Putter (E) [!].sms"
set SCRIPTNAME="puttputtersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
