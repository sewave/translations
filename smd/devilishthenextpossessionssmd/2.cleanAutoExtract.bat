@echo off
set T_FILENAME="Devilish - The Next Possession (U) [c][!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
