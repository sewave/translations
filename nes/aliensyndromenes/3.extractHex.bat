@echo off
set T_FILENAME="TR_Alien Syndrome (Tengen) [!].nes"
set SCRIPTNAME="aliensyndromenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39850:80,39030:40,3BED0:10
pause
