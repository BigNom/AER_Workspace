@Echo off
rem AECOsim Building Designer SS6 - QuickConfig Standard
rem Deployment batch file
rem Bentley Systems UK Ltd - 19 June 2015
rem v 1.1 for distribution

echo AECOsim Building Designer SS6 QuickConfig Standard
echo ********************************************************

Rem *******************************************************************************************
rem SET DRIVE LOCATIONS AND OTHER VARIABLES
rem change drive letters, version, etc., to local requirements If necessary 
rem change 'SourceDatasetRegion' variable to appropriate region code, e.g. US
Rem *******************************************************************************************

set WorkSpace=N:\14_EngineeringServices\Drafting\Admin\Bentley\ClientBuilds\RT_Workspace\BuildingDatasets\
set Company=RioTinto
echo workspace will be deployed to %WorkSpaceDrive%\%Company%
echo.

goto CreateFolders
:CreateFolders
Rem *******************************************************************************************
rem CREATE WORKSPACE FOLDERS
Rem *******************************************************************************************

%WorkSpace%
md %WorkSpace%\Dataset_%Company%\ 
cd %WorkSpace%\Dataset_%Company%\ 
md cell 
md comp 
md cpart 
md datagroupcatalogs 
md datagrouplayouts 
md datagroupsystem 
md dgnlib 
md frame 
md materials 
md part 
md seed 
rem create sub-folders
cd %WorkSpace%\Dataset_%Company%\frame\
md casework 
md doors 
md windows 
cd %WorkSpace%\Dataset_%Company%\materials\ 
md bump 
md pattern 


echo Company Dataset Folders Created
echo.

echo Deployment complete, review the confirmations listed above if you wish to then press any key to close this window. 
pause