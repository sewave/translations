@echo off
set T_FILENAME="TR_Garfield no Isshukan (Japan).nes"
set SCRIPTNAME="garfieldnoisshukannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 27040:10,27090:20,27400:10,27FC0:30,27EC0:50,27E10:90,27480:10,27980:40,27A80:40,27A30:10,27B30:30,27C30:10,27D30:20,27B70:50
pause
