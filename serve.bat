@ECHO OFF
setlocal
cd .blog & npm install & npx @11ty/eleventy --serve %*
REM @cd .blog & deno run -A npm:@11ty/eleventy --serve $*

