@echo off
set T_FILENAME="TR_Terminator, The (U) [!].bin"
set SCRIPTNAME="terminatorsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex ACDDC-ACEFB,AD0DC-AD11B
pause
