@echo off
set T_FILENAME="TR_Dune - The Battle for Arrakis (USA).md"
set SCRIPTNAME="dunethebattleforarrakissmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4F808:100,50DF4:100
pause
