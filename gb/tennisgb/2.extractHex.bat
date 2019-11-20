@echo off
set T_FILENAME="TR_Tennis (W) [!].gb"
set SCRIPTNAME="tennisgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5CF6:10,5E66:140
pause
