@echo off
set T_FILENAME="TR_AWS Pro Moves Soccer (USA).md"
set SCRIPTNAME="awspromovessoccersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
