@echo off
set T_FILENAME="TR_Space Harrier (Japan, USA).32x"
set SCRIPTNAME="spaceharrier32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4120:80,6120:80,4EA0:160,6EA0:160,B0120:80,D0120:80,B0EA0:160,D0EA0:160
pause
