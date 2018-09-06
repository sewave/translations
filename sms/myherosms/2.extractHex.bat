@echo off
set T_FILENAME="TR_My Hero (UE) [!].sms"
set SCRIPTNAME="myherosms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 66A6:62E,540E:224
pause
