@echo off
set T_FILENAME="TR_TwinBee 3 - Poko Poko Dai Maou (J) [T+Eng1.02_Demiforce].nes"
set S_FILENAME="TwinBee 3 - Poko Poko Dai Maou (J) [T+Eng1.02_Demiforce].nes"
set SCRIPTNAME="twinbee3pokopokodaimaounes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
