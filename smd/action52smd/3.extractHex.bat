@echo off
set T_FILENAME="TR_Action 52 (Unl) [b3].bin"
set SCRIPTNAME="action52smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6F54-70D4,6D2EE-6D48E,8A76E-8A96E,D6632-D6832,1209C8-120A68,1B6A5A-1B6ADA,1B6EFA-1B6F9A,1D48C8-1D4988,1E07E6-1E0886,1F7A82-1F7D02,13FD70-13FDB0
pause