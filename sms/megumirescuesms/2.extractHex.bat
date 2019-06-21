@echo off
set T_FILENAME="TR_Megumi Rescue (J) [!].sms"
set SCRIPTNAME="megumirescuesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2793:30
pause
