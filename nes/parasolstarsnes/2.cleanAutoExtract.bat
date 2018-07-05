@echo off
set T_FILENAME="Parasol Stars - The Story of Bubble Bobble 3 (E) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
