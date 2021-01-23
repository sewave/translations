@echo off
set T_FILENAME="TR_Double Dragon Remastered (USA).nes"
set SCRIPTNAME="doubledragonremasterednes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5CD80:30,5DD80:30,50E70:40,5BEA0:10,5AE10:A0,5AF10:A0,
pause
