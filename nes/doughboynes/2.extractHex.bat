@echo off
set T_FILENAME="TR_Dough Boy (Japan).nes"
set SCRIPTNAME="doughboynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8210:40,8FB0:50
pause
