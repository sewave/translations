@echo off
set T_FILENAME="Bank Panic (SG-1000) [!].sg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
