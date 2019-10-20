@echo off
set T_FILENAME="TR_Super Chase H.Q. (UE) [!].gb"
set SCRIPTNAME="superchasehqgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
