@echo off
set T_FILENAME="TR_Babel no Tou (J) [!].nes"
set SCRIPTNAME="babelnotounes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex EE80:10,C120:20,C1D0:10
pause
