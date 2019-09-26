@echo off
set T_FILENAME="TR_Shanghai Pocket (U) (V1.1) [C][!].gbc"
set SCRIPTNAME="shanghaipocketgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8600:200
pause
