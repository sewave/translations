@echo off
set T_FILENAME="TR_Gumshoe (USA, Europe).nes"
set SCRIPTNAME="gumshoenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 272A0:10,252A0:10,26150:30,24150:30,22150:30,20150:30,25700:40,27700:40
pause
