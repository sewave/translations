@echo off
set T_FILENAME="TR_Rolan's Curse (U) [!].gb"
set SCRIPTNAME="rolanscursegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BDEA:40,846A:120,9012:20
pause
