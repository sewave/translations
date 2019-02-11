@echo off
set T_FILENAME="TR_CrossFire (U) [c][!].bin"
set S_FILENAME="CrossFire (U) [c][!].bin"
set SCRIPTNAME="crossfiresmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
