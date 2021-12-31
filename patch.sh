mkdir -p ./###changed_files###/
cp --parents  $({ (git ls-files --others --exclude-standard) ; (git ls-files --modified)}) ./###changed_files###/