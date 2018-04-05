@echo off
set T_FILENAME="TR_Mickey Mania - Timeless Adventures of Mickey Mouse (U) [!].gen"
set S_FILENAME="Mickey Mania - Timeless Adventures of Mickey Mouse (U) [!].gen"
set SCRIPTNAME="mickeymaniasmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
