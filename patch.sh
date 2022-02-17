mkdir -p ./###changed_files###/
cp --parents  $({ (git ls-files --others --exclude-standard -- . :^userdata) ; (git ls-files --modified -- . :^userdata)}) ./###changed_files###/
read 