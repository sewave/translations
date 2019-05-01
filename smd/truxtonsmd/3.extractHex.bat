@echo off
set T_FILENAME="TR_Truxton (W) [!].gen"
set SCRIPTNAME="truxtonsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E4C8:200,E9C8:400
pause
