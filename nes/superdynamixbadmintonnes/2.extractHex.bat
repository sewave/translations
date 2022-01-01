@echo off
set T_FILENAME="TR_Super Dyna'mix Badminton (J) [b1][o2].nes"
set SCRIPTNAME="superdynamixbadmintonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9EB0:10,BEB0:10,9C70:180,BC70:180,
pause
