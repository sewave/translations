@echo off
set T_FILENAME="TR_Whomp 'Em (USA).nes"
set SCRIPTNAME="whompemnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2BBB0:60,33D50:100,33F50:100,379F0:80,2EA10:A0,2E8D0:40,2A910:100
pause
