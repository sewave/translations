@echo off
set T_FILENAME="TR_Laser Invasion (U) [!].nes"
set SCRIPTNAME="laserinvasionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21330:10,21360:20,21810:90,21910:90,21A10:90,
pause
