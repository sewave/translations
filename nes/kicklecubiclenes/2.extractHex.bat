@echo off
set T_FILENAME="TR_Kickle Cubicle (U) [!].nes"
set SCRIPTNAME="kicklecubiclenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F810:200,3C7E0:30,3FFC0:30,3FBD0:40,21410:80
pause
