@echo off
set T_FILENAME="TR_RoadBlasters (USA).nes"
set SCRIPTNAME="roadblastersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 215E0:60,225E0:60,245E0:60,217B0:50,227B0:50,247B0:50,24B10:300,24F10:100,248B0:10
pause
