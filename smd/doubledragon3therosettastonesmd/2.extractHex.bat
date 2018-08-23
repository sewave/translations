@echo off
set T_FILENAME="TR_Double Dragon 3 - The Rosetta Stone (UE) [!].gen"
set SCRIPTNAME="doubledragon3therosettastonesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
