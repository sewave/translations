@echo off
set T_FILENAME="TR_Tintin in Tibet (Europe) (En,Fr,De,Nl).sfc"
set SCRIPTNAME="tintinintibetsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
