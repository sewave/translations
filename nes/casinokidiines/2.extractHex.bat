@echo off
set T_FILENAME="TR_Casino Kid II (USA).nes"
set SCRIPTNAME="casinokidiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17C:18,1EA4:30,A995:10,A9E5:10,6718:10,6818:20
pause
