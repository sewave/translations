@echo off
set T_FILENAME="TR_Zero Tolerance (USA, Europe).md"
set SCRIPTNAME="zerotolerancesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 124DD6:340
pause
