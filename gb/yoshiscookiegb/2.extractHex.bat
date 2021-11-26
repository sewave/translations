@echo off
set T_FILENAME="TR_Yoshi's Cookie (USA, Europe).gb"
set SCRIPTNAME="yoshiscookiegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11041:50,12601:70,12CC1:10,12D91:40,13981:200,15221:100,1CA01:110,172B1:180,14E11:80,1D3B1:50,1CA01:50
pause
