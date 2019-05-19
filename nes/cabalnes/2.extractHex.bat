@echo off
set T_FILENAME="TR_Cabal (U) [!].nes"
set SCRIPTNAME="cabalnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
