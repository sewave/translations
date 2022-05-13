@echo off
set T_FILENAME="TR_Little Nemo - The Dream Master (USA).nes"
set SCRIPTNAME="littlenemothedreammasternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 30810:300,20580:40,20520:10,37B10:100
pause
