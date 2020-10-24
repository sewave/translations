@echo off
set T_FILENAME="TR_Stargate (USA, Europe).md"
set SCRIPTNAME="stargatesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 125560:C0,125960:60,124EC0:20,
pause
