@echo off
set T_FILENAME="TR_Cabal (U) [!].nes"
set S_FILENAME="Cabal (U) [!].nes"
set SCRIPTNAME="cabalnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
