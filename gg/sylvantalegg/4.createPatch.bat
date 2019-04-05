@echo off
set T_FILENAME="TR_Sylvan Tale (J) [T+Eng1.00_AGTP].gg"
set S_FILENAME="Sylvan Tale (J) [!].gg"
set SCRIPTNAME="sylvantalegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
