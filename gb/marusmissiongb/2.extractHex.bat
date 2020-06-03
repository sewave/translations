@echo off
set T_FILENAME="TR_Maru's Mission (U) [!].gb"
set SCRIPTNAME="marusmissiongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4692:10,581B:180,6A1B:40,7A5B:40,17545:40,1DC65:20,16635:10,16A45:20,16855:10,16B35:30,16C45:10,156AD:80
pause
