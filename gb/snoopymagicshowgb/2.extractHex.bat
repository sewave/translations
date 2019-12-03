@echo off
set T_FILENAME="TR_Snoopy - Magic Show (U) [!].gb"
set SCRIPTNAME="snoopymagicshowgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 87E0:20,8C80:40,8D80:40,9E30:10,95A0:10,9430:60
pause
