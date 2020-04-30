@echo off
set T_FILENAME="TR_V-Rally - Championship Edition (U) (M3) [M][!].gb"
set SCRIPTNAME="vrallychampionshipeditiongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
