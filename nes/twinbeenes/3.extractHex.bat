@echo off
set T_FILENAME="TR_TwinBee (J) [!].nes"
set SCRIPTNAME="twinbeenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 83D0:10,84E0:10,8DA0:10,9170:10
pause
