@echo off
set T_FILENAME="TR_Death Duel (U) [!].bin"
set S_FILENAME="Death Duel (U) [!].bin"
set SCRIPTNAME="deathduelsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
