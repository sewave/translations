@echo off
set T_FILENAME="TR_Boxxle (U) (V1.1) [!].gb"
set SCRIPTNAME="boxxlegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 75F6:300,6BB6:80,7045:10,70B6:10
pause
