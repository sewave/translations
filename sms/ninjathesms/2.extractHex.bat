@echo off
set T_FILENAME="TR_Ninja, The (UE) [!].sms"
set SCRIPTNAME="ninjathesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BC62:39B
pause
