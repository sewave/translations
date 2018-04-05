@echo off
set T_FILENAME="TR_Spider-Man vs. the Kingpin (UE) [!].sms"
set SCRIPTNAME="spidermankingpinsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9998-99BF,9A98-9AAF
pause
