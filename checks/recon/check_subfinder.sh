error=""
check_subfinder(){
    error=$(subfinder -v 2>&1 >/dev/null)
    return $?
}

CHECK_FUNCS+=("check_subfinder")