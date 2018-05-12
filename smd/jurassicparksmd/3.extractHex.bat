@echo off
set T_FILENAME="TR_Jurassic Park (U) [!].gen"
set SCRIPTNAME="jurassicparksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A669C-A6A9C,A7E50-A81B0
pause
