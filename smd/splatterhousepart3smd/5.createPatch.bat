@echo off
set T_FILENAME="TR_Splatterhouse Part 3 (J) [c][!].gen"
set S_FILENAME="Splatterhouse Part 3 (J) [c][!].gen"
set SCRIPTNAME="splatterhousepart3smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
