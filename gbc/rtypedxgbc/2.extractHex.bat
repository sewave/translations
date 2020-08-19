@echo off
set T_FILENAME="TR_R-Type DX (U) [C][!].gbc"
set SCRIPTNAME="rtypedxgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A824F:10,3EBEE:10,A241C:80,A23CC:10,B4D00:80,B5C00:80,B48B0:10,B57B0:10
pause
