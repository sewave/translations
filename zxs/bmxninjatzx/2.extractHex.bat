@echo off
set T_FILENAME="TR_BMX Ninja (Alternative).tzx"
set SCRIPTNAME="bmxninjatzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 79B8:40
pause
