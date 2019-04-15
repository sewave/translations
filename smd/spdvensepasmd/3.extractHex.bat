@echo off
set T_FILENAME="TR_Spider-Man and Venom - Separation Anxiety (U) [!].gen"
set SCRIPTNAME="spdvensepasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
