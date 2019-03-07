@echo off
set T_FILENAME="TR_Ariel - The Little Mermaid (B).sms"
set S_FILENAME="Ariel - The Little Mermaid (B).sms"
set SCRIPTNAME="arielthelittlemermaidsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
