error=""
check_burpsuite_found(){
    error=$(dpkg -l | grep burpsuite)
    return $?
}

CHECK_FUNCS+=("check_burpsuite_found")