@echo off
set T_FILENAME="TR_Battletoads (U) [!].gg"
set SCRIPTNAME="battletoadsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1635E-1645E
pause
