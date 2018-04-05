@echo off
set T_FILENAME="TR_Spider-Man vs. the Kingpin (UE) [!].sms"
set S_FILENAME="Spider-Man vs. the Kingpin (UE) [!].sms"
set SCRIPTNAME="spidermankingpinsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
