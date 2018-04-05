@echo off
set T_FILENAME="TR_Thunder Force IV (E) [c][!].bin"
set S_FILENAME="Thunder Force IV (E) [c][!].bin"
set SCRIPTNAME="thunderforceivsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
