@echo off
set T_FILENAME="TR_Parodius (Europe).gb"
set SCRIPTNAME="parodiusgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 33EBB:20,33FDB:10
pause
