@echo off
set T_FILENAME="TR_Bigfoot (USA).nes"
set SCRIPTNAME="bigfootnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22770:20,227F0:20,20E10:200,2C610:50,23F10:10,2FF50:90,23ED0:40,2E3F0:70,2E6B0:60,30A10:100,301C0:400,
pause