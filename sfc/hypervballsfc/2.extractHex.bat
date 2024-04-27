@echo off
set T_FILENAME="TR_Hyper V-Ball (USA).sfc"
set SCRIPTNAME="hypervballsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
