@echo off
set T_FILENAME="TR_Gear Works (U) [!].gb"
set SCRIPTNAME="gearworksgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 19D7D:80,1C065:80
pause
