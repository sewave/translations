@echo off
set T_FILENAME="TR_Castlequest (U) [!].nes"
set S_FILENAME="Castlequest (U) [!].nes"
set SCRIPTNAME="castlequestnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
