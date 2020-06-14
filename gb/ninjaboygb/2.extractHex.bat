@echo off
set T_FILENAME="TR_Ninja Boy (U) [!].gb"
set SCRIPTNAME="ninjaboygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B290:10,2D74:30
pause
