@echo off
set T_FILENAME="TR_Ren & Stimpy - Quest for the Shaven Yak, The (U) [!].gg"
set S_FILENAME="Ren & Stimpy - Quest for the Shaven Yak, The (U) [!].gg"
set SCRIPTNAME="renstimpyquestfortheshavenyakthegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
