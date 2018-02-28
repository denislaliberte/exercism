# Python 2.7
export EXERCISM_FOLDER="$HOME/exercism/javascript"

function build() { docker build -t exercism-js $EXERCISM_FOLDER }
function repl() { docker run -it exercism-js }
function runtest() { docker run -it -v "$EXERCISM_FOLDER/$1:/test" exercism-js jasmine $1.spec.js }
function lint() { docker run -it -v "$EXERCISM_FOLDER/$1:/test" exercism-js jslint $1.js }
function readme() { less "$EXERCISM_FOLDER/$1/readme.md" }
function edit() { vim -O "$EXERCISM_FOLDER/$1/$1.js" "$EXERCISM_FOLDER/$1/$1.spec.js" }

