@echo off
set T_FILENAME="TR_Batman - Revenge of the Joker (U).smc"
set SCRIPTNAME="batmanrevengeofthejokersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2405:200,BFCD2:10,37CA8:10
pause
