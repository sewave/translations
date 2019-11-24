@echo off
set T_FILENAME="TR_Car Fighter (1985) (Casio) (J).rom"
set SCRIPTNAME="carfighterrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
