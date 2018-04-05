@echo off
set T_FILENAME="Spartan X 2 (J) [T+Eng7Mar2003_Abstract Crouton Productions].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
