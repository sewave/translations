@echo off
set T_FILENAME="TR_Gradius (1986) (Konami) (J).rom"
set SCRIPTNAME="gradiusrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 19F6:80
pause
