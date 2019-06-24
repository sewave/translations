@echo off
set T_FILENAME="TR_Ka-Ge-Ki - Fists of Steel (U) [!].bin"
set S_FILENAME="Ka-Ge-Ki - Fists of Steel (U) [!].bin"
set SCRIPTNAME="kagekifistsofsteelsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
