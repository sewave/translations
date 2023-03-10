@echo off
set T_FILENAME="TR_3D Starstrike.tzx"
set SCRIPTNAME="3dstarstriketzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
