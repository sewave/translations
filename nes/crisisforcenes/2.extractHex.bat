@echo off
set T_FILENAME="TR_Crisis Force (J) [!].nes"
set SCRIPTNAME="crisisforcenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3DF10:100,3D2D0:50,3D2A0:10
pause
