@echo off
set T_FILENAME="TR_Battle Squadron (USA, Europe).md"
set SCRIPTNAME="battlesquadronsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 601BC:80,604BC:C0
pause
