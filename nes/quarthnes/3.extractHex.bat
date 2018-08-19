@echo off
set T_FILENAME="TR_Quarth (J) [!].nes"
set SCRIPTNAME="quarthnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E740:60,8FC0:10,AFC0:10,
pause
