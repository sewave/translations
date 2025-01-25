@echo off
set T_FILENAME="TR_Mega Man World 3 DX (USA).gbc"
set SCRIPTNAME="megamanworld3dxgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E220:20,3E5B0:10,1855C:100
pause
