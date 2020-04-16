@echo off
set T_FILENAME=CM.EXE
set S_FILENAME=OR_CM.EXE
set SCRIPTNAME="cobramission"
set T_FILENAME2=ICP.VOL
set S_FILENAME2=OR_ICP.VOL
set SCRIPTNAME2="cobramissionICP"
set T_FILENAME3=DAT.VOL
set S_FILENAME3=OR_DAT.VOL
set SCRIPTNAME3="cobramissionDAT"
set T_FILENAME4=MED.VOL
set S_FILENAME4=OR_MED.VOL
set SCRIPTNAME4="cobramissionMED"

cd cm
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
del %T_FILENAME2%
copy %S_FILENAME2% %T_FILENAME2%
del %T_FILENAME3%
copy %S_FILENAME3% %T_FILENAME3%
del %T_FILENAME4%
copy %S_FILENAME4% %T_FILENAME4%
cd ..
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex "cm/%T_FILENAME%"
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext "cm/%T_FILENAME%"
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME2%.ext "cm/%T_FILENAME2%"
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME3%.ext "cm/%T_FILENAME3%"
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME4%.ext "cm/%T_FILENAME4%"
pause
