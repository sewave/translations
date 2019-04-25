@echo off
set T_FILENAME="TR_Dark Castle (UE) [!].bin"
set SCRIPTNAME="darkcastlesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2DCC:100,368C:100
pause
