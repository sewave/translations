@echo off
set T_FILENAME="TR_Super_Imposter_Bros.gb"
set SCRIPTNAME="superimposterbrosgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18600:100
pause
