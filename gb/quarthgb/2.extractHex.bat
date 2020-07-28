@echo off
set T_FILENAME="TR_Quarth (USA, Europe).gb"
set SCRIPTNAME="quarthgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B792:100,B9B2:60,DAD0:40,DB30:40,DF40:40,E0D0:40,E130:40,E5B0:40
pause
