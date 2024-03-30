@echo off
set T_FILENAME="TR_Boid.tzx"
set SCRIPTNAME="boidtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A555:30,3860:40
pause
