@echo off
set T_FILENAME="TR_Castlevania (USA) (Rev 1).nes"
set SCRIPTNAME="castlevanianes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4F60:10,7BB0:10,7C60:50,FAB0:10,FDB0:10,FB60:50,FE60:50,7498:20,77D8:20
pause
