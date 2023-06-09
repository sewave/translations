@echo off
set T_FILENAME="TR_Aliens - Alien 2 (Japan).rom"
set SCRIPTNAME="aliensalien2rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13128:8,13850:8,13888:8,138C0:8,12EA0:240,13248:58,13770:10
pause
