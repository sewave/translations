@echo off
set T_FILENAME="TR_Locksmith (Asia) (Ja) (PAL) (Unl).nes"
set SCRIPTNAME="locksmithnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9450:30,8580:10
pause
