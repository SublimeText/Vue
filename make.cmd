@echo off
setlocal
chcp 65001 >nul
pushd %~dp0

if /i "%1" == "release" goto RELEASE
goto :usage

:RELEASE
    if "%2"== "" goto :usage
    set version=%2

    for %%d in ("%~dp0.") do set package=%%~nxd

    echo Creating assets for "%package%"...

    :: create tag and download asset for ST4107+
    set build=4107
    set branch=st%build%
    set tag=%build%-%version%
    set archive=%package%-%version%-st%build%.sublime-package
    set assets="%archive%#%archive%"
    call git tag -f %tag% %branch%
    call git archive --format zip -o "%archive%" %tag%

    :: create tag and download asset for ST4126+ (main branch)
    set build=4126
    set branch=main
    set tag=%build%-%version%
    set archive=%package%-%version%-st%build%.sublime-package
    set assets=%assets% "%archive%#%archive%"
    call git tag -f %tag% %branch%
    call git archive --format zip -o "%archive%" %tag%

    :: create github release (on main branch using latest tag)
    call git push origin %tag%
    gh release create --target %branch% -t "%package% %version%" "%tag%" %assets%
    del /f /q *.sublime-package
    git fetch
    goto :eof

:USAGE
    echo USAGE:
    echo.
    echo   make ^[release^]
    echo.
    echo   release ^<semver^> -- create and publish a release (e.g. 1.2.3)
    goto :eof
