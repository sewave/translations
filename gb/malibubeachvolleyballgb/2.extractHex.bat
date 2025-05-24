@echo off
set T_FILENAME="TR_Malibu Beach Volleyball (USA).gb"
set SCRIPTNAME="malibubeachvolleyballgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B3ED:10,9C6D:20,9D6D:20,DBFA:20,DC5A:20,D3FA:40,F44A:20
pause
