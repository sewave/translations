@echo off
set T_FILENAME="TR_Michael Jackson's Moonwalker (UE) [!].sms"
set SCRIPTNAME="michaeljacksonsmoonwalkersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
