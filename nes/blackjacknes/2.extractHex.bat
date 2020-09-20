@echo off
set T_FILENAME="TR_Blackjack (USA) (Unl).nes"
set SCRIPTNAME="blackjacknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F330:10
pause
