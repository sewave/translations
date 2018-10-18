@echo off
set T_FILENAME="TR_ESWAT Cyber Police - City Under Siege (U) [!].bin"
set S_FILENAME="ESWAT Cyber Police - City Under Siege (U) [!].bin"
set SCRIPTNAME="eswatcyberpolicecityundersiegesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
