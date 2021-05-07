@echo off
set T_FILENAME="TR_Atmo Sphere.nes"
set SCRIPTNAME="atmospherenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8A50:80,8E30:10,8E60:10,9F50:10
pause
