@echo off
set T_FILENAME="TR_Heiankyo Alien (U) [!].gb"
set SCRIPTNAME="heiankyoaliengb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
