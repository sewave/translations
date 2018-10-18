@echo off
set T_FILENAME="TR_Ren & Stimpy - Quest for the Shaven Yak, The (U) [!].gg"
set SCRIPTNAME="renstimpyquestfortheshavenyakthegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
