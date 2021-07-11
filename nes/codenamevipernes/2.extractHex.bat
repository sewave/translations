@echo off
set T_FILENAME="TR_Code Name - Viper (USA).nes"
set SCRIPTNAME="codenamevipernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E240:90,3E5F0:10,228F0:A0,2BCF0:A0,2DA10:80,3A610:90
pause
