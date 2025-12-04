error=""
check_conn(){
    error=$(ping -c1 google.com 2>&1 >/dev/null)
    return $?
}

CHECK_FUNCS+=("check_conn")