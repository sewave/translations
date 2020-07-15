@echo off
set T_FILENAME="TR_Puss 'n Boots - Pero's Great Adventure (USA).nes"
set SCRIPTNAME="pussnbootsperosgreatadventurenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1560:10,B230:10,B2E0:30,B440:200,BDB0:100,80C0:100,90C0:100,A0C0:100,
pause
