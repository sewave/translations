@echo off
set T_FILENAME="TR_Assault City - Pad Version (E) [!].sms"
set S_FILENAME="Assault City - Pad Version (E) [!].sms"
set SCRIPTNAME="assaultcitypadversionsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
