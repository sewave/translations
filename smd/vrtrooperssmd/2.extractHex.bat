@echo off
set T_FILENAME="TR_VR Troopers (USA, Europe).md"
set SCRIPTNAME="vrtrooperssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 676FA:60,6795A:80,67D5A:C0,6815A:60
pause
