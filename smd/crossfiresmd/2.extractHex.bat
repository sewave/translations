@echo off
set T_FILENAME="TR_CrossFire (U) [c][!].bin"
set SCRIPTNAME="crossfiresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
