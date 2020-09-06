@echo off
set T_FILENAME="TR_In Your Face (USA).gb"
set SCRIPTNAME="inyourfacegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
