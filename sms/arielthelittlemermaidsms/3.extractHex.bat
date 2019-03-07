@echo off
set T_FILENAME="TR_Ariel - The Little Mermaid (B).sms"
set SCRIPTNAME="arielthelittlemermaidsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16D40:200,21740:2000,38540:800,FF7A:20
pause
