@echo off
set T_FILENAME="TR_Die Hard (U) [!].nes"
set SCRIPTNAME="diehardnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F450-2F4DF,2F710-2F74F,2F7B0-2F7DF,30EA0:100,308C0:20,30AF0:20,31A10:20
pause
