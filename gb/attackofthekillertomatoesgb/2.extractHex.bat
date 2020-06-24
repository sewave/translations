@echo off
set T_FILENAME="TR_Attack of the Killer Tomatoes (U) [!].gb"
set SCRIPTNAME="attackofthekillertomatoesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
