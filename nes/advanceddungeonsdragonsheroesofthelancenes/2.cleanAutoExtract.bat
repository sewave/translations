@echo off
set T_FILENAME="Advanced Dungeons & Dragons - Heroes of the Lance (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
