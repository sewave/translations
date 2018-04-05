@echo off
set T_FILENAME="TR_Spartan X 2 (J) [T+Eng7Mar2003_Abstract Crouton Productions].nes"
set S_FILENAME="Spartan X 2 (J).nes"
set SCRIPTNAME="spartanx2nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
