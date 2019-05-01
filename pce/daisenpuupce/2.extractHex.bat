@echo off
set T_FILENAME="TR_Daisenpuu (Japan).pce"
set SCRIPTNAME="daisenpuupce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32580:60
pause
