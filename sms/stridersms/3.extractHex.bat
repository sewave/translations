@echo off
set T_FILENAME="TR_Strider (UE) [!].sms"
set SCRIPTNAME="stridersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 516A0-519BF,74240-74340
pause
