@echo off
set T_FILENAME="TR_Double Dragon 3 - The Rosetta Stone (UE) [!].gen"
set S_FILENAME="Double Dragon 3 - The Rosetta Stone (UE) [!].gen"
set SCRIPTNAME="doubledragon3therosettastonesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
