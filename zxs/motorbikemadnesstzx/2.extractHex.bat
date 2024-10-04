@echo off
set T_FILENAME="TR_Motorbike Madness (Dro Soft).tzx"
set SCRIPTNAME="motorbikemadnesstzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 62D8:40
pause
