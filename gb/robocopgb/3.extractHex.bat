@echo off
set T_FILENAME="TR_Robocop (U) (V1.0) [M][!].gb"
set SCRIPTNAME="robocopgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2FBC-308B,1632C-163CB
pause
