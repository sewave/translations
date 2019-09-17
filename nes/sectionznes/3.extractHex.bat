@echo off
set T_FILENAME="TR_Section Z (U) [!].nes"
set SCRIPTNAME="sectionznes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17610:90,DFE0:10,3640:10
pause
