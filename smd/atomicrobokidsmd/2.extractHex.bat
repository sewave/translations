@echo off
set T_FILENAME="TR_Atomic Robo-Kid (U) [c][!].bin"
set SCRIPTNAME="atomicrobokidsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 337E6:20
pause
