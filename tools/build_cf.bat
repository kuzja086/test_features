@echo off

set CI_PROJECT_DIR=%~dp0/../

set PRJ=%CI_PROJECT_DIR%/EDT_PROJECT_DIR
set WP=%CI_PROJECT_DIR%/bin/w
set XML=%CI_PROJECT_DIR%/bin/xml
set IB=File="%CI_PROJECT_DIR%/bin/db"
set CF=%CI_PROJECT_DIR%/bin/1cv8.cf

call ring edt workspace export --workspace-location %WP% --project %PRJ% --configuration-files %XML%

pushd %~dp0

call 1cv8 CREATEINFOBASE %IB%
call 1cv8 DESIGNER /WA- /DisableStartupDialogs /IBConnectionString %IB% /LoadConfigFromFiles %XML% /UpdateDBCfg
call 1cv8 DESIGNER /WA- /DisableStartupDialogs /IBConnectionString %IB% /CreateDistributionFiles -cffile %CF%

popd
