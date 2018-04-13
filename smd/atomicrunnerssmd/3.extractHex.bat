@echo off
set T_FILENAME="TR_Atomic Runner (U) [!].gen"
set SCRIPTNAME="atomicrunnerssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
