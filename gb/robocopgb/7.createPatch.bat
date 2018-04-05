@echo off
set T_FILENAME="TR_Robocop (U) (V1.0) [M][!].gb"
set S_FILENAME="Robocop (U) (V1.0) [M][!].gb"
set SCRIPTNAME="robocopgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
