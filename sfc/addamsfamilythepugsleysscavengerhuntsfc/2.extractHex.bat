@echo off
set T_FILENAME="TR_Addams Family, The - Pugsley's Scavenger Hunt (USA).sfc"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C63F4:80,BCF81:180,C6894:A0
pause
