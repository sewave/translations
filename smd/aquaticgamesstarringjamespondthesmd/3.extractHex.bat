@echo off
set T_FILENAME="TR_Aquatic Games - Starring James Pond, The (UE) [!].gen"
set SCRIPTNAME="aquaticgamesstarringjamespondthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
