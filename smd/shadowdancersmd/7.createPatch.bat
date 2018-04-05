@echo off
set T_FILENAME="TR_Shadow Dancer - The Secret of Shinobi (W) [c][!].gen"
set S_FILENAME="Shadow Dancer - The Secret of Shinobi (W) [c][!].gen"
set SCRIPTNAME="shadowdancersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
