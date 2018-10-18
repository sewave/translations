@echo off
set T_FILENAME="TR_Ren & Stimpy - Quest for the Shaven Yak, The (B) [!].sms"
set S_FILENAME="Ren & Stimpy - Quest for the Shaven Yak, The (B) [!].sms"
set SCRIPTNAME="renstimpyquestfortheshavenyakthesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
