@echo off
set T_FILENAME="TR_Flintstones, The (U) [c][!].bin"
set S_FILENAME="Flintstones, The (U) [c][!].bin"
set SCRIPTNAME="flintstonesthesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
