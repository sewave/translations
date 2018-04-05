@echo off
set T_FILENAME="TR_Gun-Nac (U) [!].nes"
set SCRIPTNAME="gunnacnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F870:80,2B010-2B410
pause
