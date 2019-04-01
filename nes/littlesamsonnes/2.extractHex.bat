@echo off
set T_FILENAME="TR_Little Samson (U) [!].nes"
set SCRIPTNAME="littlesamsonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4D9F0:20,4DAA0:10,574B0:100,4D930:10
pause
