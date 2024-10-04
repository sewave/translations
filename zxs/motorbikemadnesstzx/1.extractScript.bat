@echo off
set T_FILENAME="Motorbike Madness (Dro Soft).tzx"
set SCRIPTNAME="motorbikemadnesstzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
