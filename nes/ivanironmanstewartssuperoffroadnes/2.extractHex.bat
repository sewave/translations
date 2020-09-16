@echo off
set T_FILENAME="TR_Ivan 'Ironman' Stewart's Super Off Road (USA).nes"
set SCRIPTNAME="ivanironmanstewartssuperoffroadnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
