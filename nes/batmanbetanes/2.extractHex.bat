@echo off
set T_FILENAME="TR_Batman (U) (Older Beta).nes"
set SCRIPTNAME="batmanbetanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39890:10,35010:300,35710:100
pause
