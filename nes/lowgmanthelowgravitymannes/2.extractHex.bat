@echo off
set T_FILENAME="TR_Low G Man - The Low Gravity Man (USA).nes"
set SCRIPTNAME="lowgmanthelowgravitymannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 200D0:10,203E0:30,20450:80,20530:10,20590:20,21140:300,22DB0:60,22F70:60
pause
