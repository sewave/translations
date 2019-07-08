@echo off
set T_FILENAME="TR_Fantasy Zone - The Maze (UE) [!].sms"
set SCRIPTNAME="fantasyzonethemazesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6640:800
pause
