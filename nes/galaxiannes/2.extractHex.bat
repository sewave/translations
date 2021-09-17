@echo off
set T_FILENAME="TR_Galaxian (Japan) (Rev A).nes"
set SCRIPTNAME="galaxiannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 42B0:10,52B0:10,4410:40,46F0:20,59A0:50,54E0:30,41C0:10,4220:10,4280:10,51C0:10,5220:10,5280:10
pause
