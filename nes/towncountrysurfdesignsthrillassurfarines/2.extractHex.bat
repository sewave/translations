@echo off
set T_FILENAME="TR_Town & Country Surf Designs - Thrilla's Surfari (USA).nes"
set SCRIPTNAME="towncountrysurfdesignsthrillassurfarines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 30310:80,3EE10:80,3BE10:80,39010:100
pause
