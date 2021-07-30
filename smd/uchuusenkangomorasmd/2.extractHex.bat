@echo off
set T_FILENAME="TR_Uchuu Senkan Gomora (Japan).md"
set SCRIPTNAME="uchuusenkangomorasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E3A8C:A0
pause
