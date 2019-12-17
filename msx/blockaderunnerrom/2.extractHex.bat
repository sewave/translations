@echo off
set T_FILENAME="TR_Blockade Runner (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="blockaderunnerrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 27EE:80
pause
