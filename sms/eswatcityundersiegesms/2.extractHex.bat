@echo off
set T_FILENAME="TR_E-SWAT - City Under Siege (UE) [!].sms"
set SCRIPTNAME="eswatcityundersiegesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3DE60:200
pause
