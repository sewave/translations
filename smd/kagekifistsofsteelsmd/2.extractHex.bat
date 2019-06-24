@echo off
set T_FILENAME="TR_Ka-Ge-Ki - Fists of Steel (U) [!].bin"
set SCRIPTNAME="kagekifistsofsteelsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
