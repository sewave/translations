@echo off
set T_FILENAME="TR_Back to the Future Part III (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiiisms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C040:C0,C380:60
pause
