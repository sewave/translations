@echo off
set T_FILENAME="TR_OutRun 2019 (U) [!].gen"
set S_FILENAME="OutRun 2019 (U) [!].gen"
set SCRIPTNAME="outrun2019smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
