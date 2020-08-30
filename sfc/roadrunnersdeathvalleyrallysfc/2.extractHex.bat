@echo off
set T_FILENAME="TR_Road Runner's Death Valley Rally (USA).sfc"
set SCRIPTNAME="roadrunnersdeathvalleyrallysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
