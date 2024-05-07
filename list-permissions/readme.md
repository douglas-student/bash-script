# File Permissions Listing

This bash script lists the files in the current directory along with their permissions.

## Usage

1. Copy the script to the directory you want to list.
2. Run the script using the following command:

```bash
./list_permissions.sh
```

## Description

The `list_permissions.sh` script traverses all files in the current directory and displays their names along with their permissions. Permissions are displayed in octal format.

## Example Output

```
===============================
File                Permissions
===============================
script.sh           755
file.txt            644
directory           755
===============================
```

In this example, `script.sh` has permissions `755`, `file.txt` has permissions `644`, and `directory` has permissions `755`.


Make sure to rename the script to `list_permissions.sh` or any other preferred name.
