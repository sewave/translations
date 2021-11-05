@echo off
set T_FILENAME="TR_Monster Party (USA).nes"
set SCRIPTNAME="monsterpartynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3D950:10,3DFC0:10,29D10:70,2BD10:70,2DD10:70,2FD10:70,31D10:70,33D10:70,35D10:70,3F4E0:130,274D0:A0
pause
