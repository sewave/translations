@echo off
set T_FILENAME="TR_Spartan X 2 (J) [T+Eng7Mar2003_Abstract Crouton Productions].nes"
set SCRIPTNAME="spartanx2nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20310:80,31B60:90,3D710-3E010,31610:60
pause
