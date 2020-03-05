@echo off
set T_FILENAME="TR_Formation Z (1985) (Jaleco) (J).rom"
set SCRIPTNAME="formationzrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
