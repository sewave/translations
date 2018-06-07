@echo off
set T_FILENAME="TR_Bank Panic (SG-1000) [!].sg"
set SCRIPTNAME="bankpanicsg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4000-4080,62D8-6358
pause
