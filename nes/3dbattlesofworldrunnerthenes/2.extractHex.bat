@echo off
set T_FILENAME="TR_3-D Battles of World Runner, The (U) [!].nes"
set SCRIPTNAME="3dbattlesofworldrunnerthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14B10:30,16110:80,12D10:70,14C10:20
pause
