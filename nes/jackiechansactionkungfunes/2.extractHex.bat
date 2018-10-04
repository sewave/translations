@echo off
set T_FILENAME="TR_Jackie Chan's Action Kung Fu (U) [!].nes"
set SCRIPTNAME="jackiechansactionkungfunes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F990:40,27810:200,28010:200
pause
