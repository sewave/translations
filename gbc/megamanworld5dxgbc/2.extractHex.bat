@echo off
set T_FILENAME="TR_Mega Man World 5 DX.gbc"
set SCRIPTNAME="megamanworld5dxgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 59B7F:8,59B94:8,59B9B:8,59BF6:8,59C04:8,59C2E:8,59C35:8,59C3C:8,42AD7:100,59D98:20,13C4A:10,13F4A:10,BC370:10
pause
