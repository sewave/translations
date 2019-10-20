@echo off
set T_FILENAME="TR_TwinBee 3 - Poko Poko Dai Maou (J) [T+Eng1.02_Demiforce].nes"
set SCRIPTNAME="twinbee3pokopokodaimaounes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3DA70:10,3DD00:10,3DEC0:50,2F3C0:30,2F630:C0,2FE10:80,2FF10:80
pause
