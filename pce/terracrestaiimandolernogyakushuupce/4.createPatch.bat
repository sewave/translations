@echo off
set T_FILENAME="TR_Terra Cresta II - Mandoler no Gyakushuu (Japan).pce"
set S_FILENAME="Terra Cresta II - Mandoler no Gyakushuu (Japan).pce"
set SCRIPTNAME="terracrestaiimandolernogyakushuupce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
