@echo off
set T_FILENAME="TR_US Championship V'Ball (J) [!].nes"
set SCRIPTNAME="uschampionshipvballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20E80:90,20F80:90
pause
