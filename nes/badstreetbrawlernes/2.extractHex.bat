@echo off
set T_FILENAME="TR_Bad Street Brawler (U) [!].nes"
set SCRIPTNAME="badstreetbrawlernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
