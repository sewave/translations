@echo off
set T_FILENAME="TR_Brawl Brothers (U) [!].smc"
set SCRIPTNAME="brawlbrotherssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B9260:400
pause
