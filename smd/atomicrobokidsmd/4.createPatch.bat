@echo off
set T_FILENAME="TR_Atomic Robo-Kid (U) [c][!].bin"
set S_FILENAME="Atomic Robo-Kid (U) [c][!].bin"
set SCRIPTNAME="atomicrobokidsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
