@echo off
set T_FILENAME="TR_Zexas Limited (1985) (dB-Soft) (J).rom"
set SCRIPTNAME="zexaslimitedrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
