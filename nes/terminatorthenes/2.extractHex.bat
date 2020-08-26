@echo off
set T_FILENAME="TR_Terminator, The (U) [!].nes"
set SCRIPTNAME="terminatorthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32A30:80,248B0:30,30050:90,30BB0:130,32020:180,36910:700,3DD60:20,3DC80:20,3DD80:20
pause
