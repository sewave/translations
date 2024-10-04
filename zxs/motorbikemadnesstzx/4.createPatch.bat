@echo off
set T_FILENAME="TR_Motorbike Madness (Dro Soft).tzx"
set S_FILENAME="Motorbike Madness (Dro Soft).tzx"
set SCRIPTNAME="motorbikemadnesstzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
