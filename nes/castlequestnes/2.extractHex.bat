@echo off
set T_FILENAME="TR_Castlequest (U) [!].nes"
set SCRIPTNAME="castlequestnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 98C0:30
pause
