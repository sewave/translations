@echo off
set T_FILENAME="TR_Wolverine (U) [!].nes"
set SCRIPTNAME="wolverinenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39F10:80,37F10:80,30F10:80,23F10:80,21F10:80,20F10:80,23E10:40,21940:80,2A010:300
pause
