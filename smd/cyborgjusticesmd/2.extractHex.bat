@echo off
set T_FILENAME="TR_Cyborg Justice (USA, Europe).md"
set SCRIPTNAME="cyborgjusticesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 520:80,6D0:50
pause
