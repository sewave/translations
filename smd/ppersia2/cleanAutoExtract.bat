@echo off 
set T_FILENAME="Prince of Persia 2 - The Shadow and The Flame (Beta).bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
