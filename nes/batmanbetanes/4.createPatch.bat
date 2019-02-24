@echo off
set T_FILENAME="TR_Batman (U) (Older Beta).nes"
set S_FILENAME="Batman (U) (Older Beta).nes"
set SCRIPTNAME="batmanbetanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
