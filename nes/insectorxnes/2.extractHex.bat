@echo off
set T_FILENAME="TR_Insector X (J).nes"
set SCRIPTNAME="insectorxnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23010:300,23610:200,3FF10:100
pause
