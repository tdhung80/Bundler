SET FROM=..\src
SET DIST=..\NuGet\content\bundler

DEL /F /S /q %DIST%\*
@rmdir /S /Q %DIST%
MD %DIST%\


COPY %FROM%\* %DIST%
MD %DIST%\node_modules\.bin
COPY %FROM%\node_modules\.bin\* %DIST%\node_modules\.bin

MD %DIST%\node_modules\clean-css\bin %DIST%\node_modules\clean-css\lib %DIST%\node_modules\clean-css\node_modules\optimist
COPY %FROM%\node_modules\clean-css\bin\* %DIST%\node_modules\clean-css\bin
COPY %FROM%\node_modules\clean-css\lib\* %DIST%\node_modules\clean-css\lib
COPY %FROM%\node_modules\clean-css\node_modules\optimist\index.js %DIST%\node_modules\clean-css\node_modules\optimist
COPY %FROM%\node_modules\clean-css\bin\* %DIST%\node_modules\clean-css\bin
COPY %FROM%\node_modules\clean-css\index.js %DIST%\node_modules\clean-css

MD %DIST%\node_modules\coffee-script\bin %DIST%\node_modules\coffee-script\lib\coffee-script %DIST%\node_modules\coffee-script\node_modules\extras
COPY %FROM%\node_modules\coffee-script\bin\* %DIST%\node_modules\coffee-script\bin
COPY %FROM%\node_modules\coffee-script\lib\coffee-script\* %DIST%\node_modules\coffee-script\lib\coffee-script
COPY %FROM%\node_modules\coffee-script\package.json %DIST%\node_modules\coffee-script

REM Try using single coffee-script.js
REM MD %DIST%\node_modules\coffee-script
REM COPY %FROM%\node_modules\coffee-script\extras\coffee-script.js %DIST%\node_modules\coffee-script\index.js

MD %DIST%\node_modules\less\bin %DIST%\node_modules\less\lib\less\tree
COPY %FROM%\node_modules\less\bin\* %DIST%\node_modules\less\bin
COPY %FROM%\node_modules\less\lib\less\* %DIST%\node_modules\less\lib\less
COPY %FROM%\node_modules\less\lib\less\tree\* %DIST%\node_modules\less\lib\less\tree
COPY %FROM%\node_modules\less\package.json %DIST%\node_modules\less

REM Try using single less.js
REM MD %DIST%\node_modules\less
REM COPY %FROM%\node_modules\less\dist\less-1.3.0.js %DIST%\node_modules\less\index.js

MD %DIST%\node_modules\LiveScript %DIST%\node_modules\LiveScript\bin %DIST%\node_modules\LiveScript\lib
COPY %FROM%\node_modules\LiveScript\bin\* %DIST%\node_modules\LiveScript\bin
COPY %FROM%\node_modules\LiveScript\lib\* %DIST%\node_modules\LiveScript\lib
COPY %FROM%\node_modules\LiveScript\package.json %DIST%\node_modules\LiveScript

MD %DIST%\node_modules\stylus
XCOPY %FROM%\node_modules\stylus %DIST%\node_modules\stylus /s /e

MD %DIST%\node_modules\nib
XCOPY %FROM%\node_modules\nib %DIST%\node_modules\nib /s /e

MD %DIST%\node_modules\lib
COPY %FROM%\node_modules\lib\* %DIST%\node_modules\lib

MD %DIST%\node_modules\node-sass %DIST%\node_modules\node-sass\bin %DIST%\node_modules\node-sass\lib
MD %DIST%\node_modules\node-sass\lib-sass %DIST%\node_modules\node-sass\lib-sass\m4 %DIST%\node_modules\node-sass\lib-sass\src
MD %DIST%\node_modules\node-sass\node_modules %DIST%\node_modules\node-sass\precompiled
COPY %FROM%\node_modules\node-sass\* %DIST%\node_modules\node-sass
COPY %FROM%\node_modules\node-sass\bin\* %DIST%\node_modules\node-sass\bin
COPY %FROM%\node_modules\node-sass\lib\* %DIST%\node_modules\node-sass\lib
COPY %FROM%\node_modules\node-sass\lib-sass\* %DIST%\node_modules\node-sass\lib-sass
COPY %FROM%\node_modules\node-sass\lib-sass\m4\* %DIST%\node_modules\node-sass\lib-sass\m4
COPY %FROM%\node_modules\node-sass\lib-sass\src\* %DIST%\node_modules\node-sass\lib-sass\src
XCOPY %FROM%\node_modules\node-sass\node_modules %DIST%\node_modules\node-sass\node_modules /s /e
XCOPY %FROM%\node_modules\node-sass\precompiled %DIST%\node_modules\node-sass\precompiled /s /e


MD %DIST%\node_modules\step\lib
COPY %FROM%\node_modules\step\package.json %DIST%\node_modules\step
COPY %FROM%\node_modules\step\lib\* %DIST%\node_modules\step\lib

COPY %FROM%\node_modules\uglify-js.js %DIST%\node_modules

MD %DIST%\vs2010-extension
COPY %FROM%\vs\BundlerRunOnSave\bin\Release\* %DIST%\vs2010-extension
