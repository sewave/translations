@echo off 
set T_FILENAME="Tiny Toon Adventures 6 (Unl) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
