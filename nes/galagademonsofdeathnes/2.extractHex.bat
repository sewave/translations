@echo off
set T_FILENAME="TR_Galaga - Demons of Death (U) [!].nes"
set SCRIPTNAME="galagademonsofdeathnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9200:10
pause
