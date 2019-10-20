@echo off
set T_FILENAME="TR_TwinBee 3 - Poko Poko Dai Maou (J) [T+Eng1.02_Demiforce].nes"
set S_FILENAME="TwinBee 3 - Poko Poko Dai Maou (J) [!].nes"
set SCRIPTNAME="twinbee3pokopokodaimaounes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
