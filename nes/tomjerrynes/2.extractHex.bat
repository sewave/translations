@echo off
set T_FILENAME="TR_Tom & Jerry (U) [!].nes"
set SCRIPTNAME="tomjerrynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2B280:80,2B330:A0
pause
