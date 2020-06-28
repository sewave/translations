@echo off
set T_FILENAME="TR_Defenders of Dynatron City (U) [!].nes"
set SCRIPTNAME="defendersofdynatroncitynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26940:100,26B90:100,28C50:10,28CF0:40,28D90:60,28F70:80
pause
