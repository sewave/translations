@echo off
set T_FILENAME="TR_Choujikuu Yousai - Macross (Japan).nes"
set SCRIPTNAME="choujikuuyousaimacrossnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5E60:10,5580:10
pause
