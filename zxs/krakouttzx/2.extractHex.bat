@echo off
set T_FILENAME="TR_Krakout.tzx"
set SCRIPTNAME="krakouttzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 518E:8,521E:28
pause
