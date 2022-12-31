(return 0 2>/dev/null) && sourced=1 || sourced=0

if [ $sourced -ne 1 ]; then
    echo "Sorry, to work correctly, this file must be sourced"
    echo "and not executed in a subshell. As such:"
    echo
    echo "        source $0"
    echo
    exit 1
fi

python3 -m venv --upgrade-deps axictrl
source axictrl/bin/activate
pip install "textual[dev]"
python -m pip install https://cdn.evilmadscientist.com/dl/ad/public/AxiDraw_API.zip

