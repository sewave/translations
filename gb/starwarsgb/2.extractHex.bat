@echo off
set T_FILENAME="TR_Star Wars (U) (V1.1) [!].gb"
set SCRIPTNAME="starwarsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C030:40,1C1C0:40,1C0B0:10
pause
