@echo off
set T_FILENAME="TR_Shadow Dancer - The Secret of Shinobi (W) [c][!].gen"
set SCRIPTNAME="shadowdancersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
