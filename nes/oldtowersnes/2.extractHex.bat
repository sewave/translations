@echo off
set T_FILENAME="TR_oldTowers_1_1.nes"
set SCRIPTNAME="oldtowersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E5C0:50,3E7C0:30,38DC0:50,38FC0:30,397D0:20,398D0:20,3CCD0:20,3CDD0:20,2DE70:20,2DF70:20,379B0:40
pause
