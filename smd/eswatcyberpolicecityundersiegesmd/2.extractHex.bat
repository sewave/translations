@echo off
set T_FILENAME="TR_ESWAT Cyber Police - City Under Siege (U) [!].bin"
set SCRIPTNAME="eswatcyberpolicecityundersiegesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
