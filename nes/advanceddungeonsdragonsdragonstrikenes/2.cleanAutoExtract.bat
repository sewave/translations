@echo off
set T_FILENAME="Advanced Dungeons & Dragons - Dragon Strike (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
