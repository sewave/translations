@echo off
set T_FILENAME="TR_Ren & Stimpy - Quest for the Shaven Yak, The (B) [!].sms"
set SCRIPTNAME="renstimpyquestfortheshavenyakthesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
