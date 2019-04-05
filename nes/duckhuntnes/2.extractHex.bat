@echo off
set T_FILENAME="TR_Duck Hunt (W) [!].nes"
set SCRIPTNAME="duckhuntnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5150:10,5DB0:30,5210:10
pause
