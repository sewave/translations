@echo off
set T_FILENAME="TR_World Games (USA).nes"
set SCRIPTNAME="worldgamesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16481:10,16651:10,16921:10,4C1E:50,16D62:20
pause
