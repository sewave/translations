@echo off
set T_FILENAME="TR_Spelunker (1986) (Irem) (J).rom"
set SCRIPTNAME="spelunkerrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
