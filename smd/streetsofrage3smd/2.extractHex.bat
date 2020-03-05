@echo off
set T_FILENAME="TR_Streets of Rage 3 (U) [!].bin"
set SCRIPTNAME="streetsofrage3smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24B108:300,27D2A2:100,27D4A2:10,27D852:50
pause
