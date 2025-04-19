@echo off
set T_FILENAME="TR_All-Pro Basketball (USA).nes"
set SCRIPTNAME="allprobasketballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 365C0:10,3D590:70,3DC10:70,2CFD0:10
pause
