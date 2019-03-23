@echo off
set T_FILENAME="TR_Castle of Deceit (Bunch) [!].nes"
set SCRIPTNAME="castleofdeceitnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10150:10,101B0:10,10210:70
pause
