@echo off
set T_FILENAME="TR_Nuts & Milk (Japan).nes"
set SCRIPTNAME="nutsmilknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4E30:20,4F30:20,5120:10,5260:10,52D0:30,55C0:40,
pause
