@echo off
set T_FILENAME="TR_Wrecking Crew (W) [!].nes"
set S_FILENAME="Wrecking Crew (W) [!].nes"
set SCRIPTNAME="wreckingcrewnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
