@echo off
set T_FILENAME="TR_Cyber Stadium Series - Base Wars (USA).nes"
set SCRIPTNAME="cyberstadiumseriesbasewarsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F600:10,30000:10,2F400:10
pause
