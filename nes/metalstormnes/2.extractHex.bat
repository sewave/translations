@echo off
set T_FILENAME="TR_Metal Storm (U) [!].nes"
set SCRIPTNAME="metalstormnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FA10:10,22F10:80,2A810:800,3E810:700,38C10:120,31410:120,31370:80,38B70:80,30AF0:10,38210:10,30A10:10,22010:C00
pause
