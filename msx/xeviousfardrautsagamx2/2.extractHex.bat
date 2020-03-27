@echo off
set T_FILENAME="TR_Xevious - Fardraut Saga (1989) (Namcot) (J).mx2"
set SCRIPTNAME="xeviousfardrautsagamx2"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
