@echo off
set T_FILENAME="TR_Rolling Thunder (USA) (Unl).nes"
set SCRIPTNAME="rollingthundernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F990:80,3FE90:40,3FF10:60,3E810:10
pause
