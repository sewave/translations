@echo off
set T_FILENAME="TR_Hyper Sports (SG-1000) [!].sg"
set SCRIPTNAME="hypersportssg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A5:180
pause
