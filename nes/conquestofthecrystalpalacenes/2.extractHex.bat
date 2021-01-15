@echo off
set T_FILENAME="TR_Conquest of the Crystal Palace (USA).nes"
set SCRIPTNAME="conquestofthecrystalpalacenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26770:20,26BA0:30,2D8B0:280,3FF30:10,3FD90:40,3FE90:20,2E7D0:30,2E090:40,2AA90:60,2AA10:10
pause
