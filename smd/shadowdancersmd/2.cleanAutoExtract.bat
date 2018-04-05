@echo off
set T_FILENAME="Shadow Dancer - The Secret of Shinobi (W) [c][!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
