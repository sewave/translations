@echo off
set T_FILENAME="TR_Double Dribble (USA) (Rev 1).nes"
set SCRIPTNAME="doubledribblenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B4F3:10
pause
