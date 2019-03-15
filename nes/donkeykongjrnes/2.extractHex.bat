@echo off
set T_FILENAME="TR_Donkey Kong Jr. (JU) (PRG1) [!].nes"
set SCRIPTNAME="donkeykongjrnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5150:10,5210:100,58E0:30
pause
