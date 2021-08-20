@echo off
set T_FILENAME="TR_Mega Man IV (USA).gb"
set SCRIPTNAME="megamanivgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 59785:8,597A1:8,597A8:8,597C4:8,597EE:8,59803:8,59811:8,5983B:8,530BC:20,79723:20
pause
