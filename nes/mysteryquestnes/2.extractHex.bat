@echo off
set T_FILENAME="TR_Mystery Quest (USA).nes"
set SCRIPTNAME="mysteryquestnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 94C0:10,9570:20,B4C0:10,B570:20,D4C0:10,D570:20,F4C0:10,F570:20
pause
