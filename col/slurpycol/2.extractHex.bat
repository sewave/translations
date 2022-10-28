@echo off
set T_FILENAME="TR_Slurpy (1984) (Xonox).col"
set SCRIPTNAME="slurpycol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1869:8,18A1:8,18C1:8
pause
