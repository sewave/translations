@echo off
set T_FILENAME="TR_Splatterhouse Part 3 (J) [c][!].gen"
set SCRIPTNAME="splatterhousepart3smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
