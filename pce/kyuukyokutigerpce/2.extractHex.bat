@echo off
set T_FILENAME="TR_Kyuukyoku Tiger (Japan).pce"
set SCRIPTNAME="kyuukyokutigerpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 356AB:30,3D778:10
pause
