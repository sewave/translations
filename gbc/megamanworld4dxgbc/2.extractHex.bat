@echo off
set T_FILENAME="TR_Mega Man World 4 DX.gbc"
set SCRIPTNAME="megamanworld4dxgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 59785:8,597A1:8,597A8:8,597C4:8,597EE:8,59803:8,59811:8,5983B:8,530BC:20,79722:20,40B29:100,80A54:10,599F3:20
pause
