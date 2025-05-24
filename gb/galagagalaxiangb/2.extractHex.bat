@echo off
set T_FILENAME="TR_Arcade Classic No. 3 - Galaga & Galaxian (USA) (SGB Enhanced).gb"
set SCRIPTNAME="galagagalaxiangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8754:10,10A4E:10,8C24:200,10F1E:200,8844:A0,8C04:10,1233E:80,126FE:10,A044:A0,A404:10,B324:10,EEFD:10,EFBD:280,F7CD:80
pause
