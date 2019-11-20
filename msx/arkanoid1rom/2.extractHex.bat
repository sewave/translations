@echo off
set T_FILENAME="TR_Arkanoid 1 (1986) (Taito) (J).rom"
set SCRIPTNAME="arkanoid1rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3EDC:200,49A4:100,5124:200
pause
