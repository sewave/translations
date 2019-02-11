@echo off
set T_FILENAME="TR_Universal Soldier (U) [!].gen"
set S_FILENAME="Universal Soldier (U) [!].gen"
set SCRIPTNAME="universalsoldiersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
