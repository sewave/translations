@echo off
set T_FILENAME="TR_Beyond Zero Tolerance (USA) (Proto).md"
set SCRIPTNAME="beyondzerotolerancesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
