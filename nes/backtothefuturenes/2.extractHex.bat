@echo off
set T_FILENAME="TR_Back to the Future (USA).nes"
set SCRIPTNAME="backtothefuturenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A300:80,A610:40,A770:90,C670:30,A1C0:10,A0C0:10,A100:10,A190:10,A280:20,9150:20,D150:20,F150:20
pause
