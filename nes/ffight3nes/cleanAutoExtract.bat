@echo off 
set T_FILENAME="Final Fight 3 (Unl) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
