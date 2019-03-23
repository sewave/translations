@echo off
set T_FILENAME="TR_Challenge of the Dragon (Color Dreams) [!].nes"
set SCRIPTNAME="challengeofthedragonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F210:200,1FE00:100
pause
