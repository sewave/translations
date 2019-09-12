@echo off
set T_FILENAME="TR_Super Spy Hunter (U) [!].nes"
set SCRIPTNAME="superspyhunternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FC70:60,37F70:20,37B70:20,37770:20,37370:20,35770:20,38C10:80,38D10:80,38E10:80,37CD0:20,37DD0:20,37ED0:20,37FD0:20
pause