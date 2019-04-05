@echo off
set T_FILENAME="TR_Sylvan Tale (J) [T+Eng1.00_AGTP].gg"
set SCRIPTNAME="sylvantalegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5439A:200
pause
