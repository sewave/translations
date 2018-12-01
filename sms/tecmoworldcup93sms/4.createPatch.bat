@echo off
set T_FILENAME="TR_Tecmo World Cup '93 (E) [!].sms"
set S_FILENAME="Tecmo World Cup '93 (E) [!].sms"
set SCRIPTNAME="tecmoworldcup93sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
