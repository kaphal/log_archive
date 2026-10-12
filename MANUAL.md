# Manual
This is manual for `log_archive.sh`

## Making file executable
After dowloading or copying script use command:
```bash
chmod u+x file_name.sh
(replace `file_name` with proper name of file) to make file executable, then you can use file with command:
```bash
sudo ./file_name.sh```
or
```bash
sudo bash file_name.sh```.

### Warning
If you use script without `sudo` scipt would not copy to .tar file files used by root.

## making `log_archive.sh` useable without passwd
to use `log_archive.sh` without password we will use `visudo`.
Use 
```bash
sudo visudo```
to open it.
