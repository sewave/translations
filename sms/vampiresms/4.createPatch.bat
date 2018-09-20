@echo off
set T_FILENAME="TR_Vampire (E) [!].sms"
set S_FILENAME="Vampire (E) [!].sms"
set SCRIPTNAME="vampiresms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
