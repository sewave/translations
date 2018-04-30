@echo off
set T_FILENAME="TR_Michael Jackson's Moonwalker (UE) [!].sms"
set S_FILENAME="Michael Jackson's Moonwalker (UE) [!].sms"
set SCRIPTNAME="michaeljacksonsmoonwalkersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
