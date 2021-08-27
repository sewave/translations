@echo off
set T_FILENAME="TR_Faxanadu (USA) (Rev A).nes"
set SCRIPTNAME="faxanadunes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 37448:20,34028:50,34088:8,21004:10,34088:8
pause
