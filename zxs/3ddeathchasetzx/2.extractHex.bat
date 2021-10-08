@echo off
set T_FILENAME="TR_3D Deathchase.tzx"
set SCRIPTNAME="3ddeathchasetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
