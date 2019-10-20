@echo off
set T_FILENAME="TwinBee 3 - Poko Poko Dai Maou (J) [T+Eng1.02_Demiforce].nes"
set SCRIPTNAME="twinbee3pokopokodaimaounes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
