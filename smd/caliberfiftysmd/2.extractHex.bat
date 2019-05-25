@echo off
set T_FILENAME="TR_Caliber Fifty (U) [!].bin"
set SCRIPTNAME="caliberfiftysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16444:100,17B6C:800
pause
