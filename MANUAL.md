# Manual
This is the manual for `log_archive.sh`

## Making file executable
After downloading or copying script use command:
```bash
chmod u+x file_name.sh
```
(replace `file_name` with the proper name of file) to make file executable, then you can use file with command:

```bash
sudo ./file_name.sh
```
or

```bash
sudo bash file_name.sh
```

### Warning
If you use the script without `sudo` script would not copy to .tar file files used by root.

## Making `log_archive.sh` useable without passwd
to use `log_archive.sh` without a password we will use `visudo`.
Use 
```bash
sudo visudo
```
to open it. Next you go to end of the file and you write this:
```bash
user_name ALL=(ALL) NOPASSWD: script_location
```
(replace user_name and script_location and replace it with your actual username and absolute path to the script)

