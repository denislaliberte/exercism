# Python 2.7
export EXERCISM_FOLDER="$HOME/exercism/python"

function build() { docker build -t exercism-py $EXERCISM_FOLDER }
function repl() { docker run -it exercism-py }
function runtest() { docker run -it -v "$EXERCISM_FOLDER/$1:/test" exercism-py py.test }
function lint() { docker run -it -v "$EXERCISM_FOLDER/$1:/test" exercism-py flake8 }
function readme() { less "$EXERCISM_FOLDER/$1/readme.md" }
function edit() { vim -O "$EXERCISM_FOLDER/$1/$1.py" "$EXERCISM_FOLDER/$1/$1_test.py" }

