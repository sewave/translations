@echo off
set T_FILENAME="TR_Ironsword - Wizards & Warriors II (U) [!].nes"
set SCRIPTNAME="ironswordwizardswarriorsiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 236E3:10,237B3:10
pause
