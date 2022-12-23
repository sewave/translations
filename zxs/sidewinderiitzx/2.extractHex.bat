@echo off
set T_FILENAME="TR_Sidewinder II (Mastertronic Plus).tzx"
set SCRIPTNAME="sidewinderiitzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
