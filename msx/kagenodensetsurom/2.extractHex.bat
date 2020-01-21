@echo off
set T_FILENAME="TR_Kageno Densetsu (1986) (Taito) (J).rom"
set SCRIPTNAME="kagenodensetsurom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
