@echo off
set T_FILENAME="TR_Exerion 1 (1984) (Jaleco) (J).rom"
set SCRIPTNAME="exerion1rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38F0:80
pause
