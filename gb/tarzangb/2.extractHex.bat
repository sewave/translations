@echo off
set T_FILENAME="TR_Tarzan (U) [!].gb"
set SCRIPTNAME="tarzangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17F20:60
pause
