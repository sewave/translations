@echo off
set T_FILENAME="G-LOC Air Battle (W) [c][!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
