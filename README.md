# 👍 auto Recon Environment Check
a modular Bash-based automation script developed by Green Arrow.
This tool scans the system, runs predefined checks, and logs results in a clean, structured format to make system diagnostics easier.


----

# 👽 Project Overview
This script automatically:

- Scans the `checks/` directory for check modules.
- Dynamically loads every check file using `source`.
- Executes all check functions listed in the `CHECK_FUNCS` array.
- Logs success and failures with optional error details.
- Provides a clean, extensible, modular design.


-----

# 👀 Project Structure

```
project/
  |autopentest.sh            # Main script
  |config.cfg                # Main Config
  
 |checks/            # Folder containing check scripts
   |network/
     |check_conn.sh
   |recon/
     |check_subfinder.sh
   |webhacking/
     |check_burpsuite.sh
   
 |storage/          # Log files
   |success.log
   |fail.log

```


# Current Checks

| Check Function                  | Description |
-------------------|-----------------|
 `check_burpsuite_found` | Checks if BurpSuite is installed |
 `check_subfinder`    | Checks if subfinder exists |
 check_conn       | Tests internet connectivity with ping |


# 👁 How It Works

1. Finds all files inside `the checks/` directory.
2. Loads each check module using `source`.
3. Each check file registers its function into the `CHECK_FUNCS` array.
4. Runs the main script, logs output, processes errors.


# 👉 Usage

## 1. Make the script executable:

```bash
chmod +x autopentest.sh
```

## 2. Run the script:

```bash
./autopentest.sh
```


# 💤 Features

- Modular system to add new checks easily
- Read-only log structure (success/fail)
- Lightweight, fast script
- Easily maintainable Architecture

## 👩 Adding New Checks

- Create a check file in `checks/`m, e.g. `checks/mycheck.sh`.
- Add a function:

```bash
my_check() {
    error=$(lls 2>&1 >/dev/null)
    return $?
}
```


- Add the function to `CHECK_FUNCS`:

```bash
CHECK_FUNCS+=("my_check")
```


# 👉 Developer

Developed by Green Arrow - System Automation & Bash Scripting