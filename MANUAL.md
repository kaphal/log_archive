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

## Connecting with cron
To make script automaticly in the day, month, hour, etc. We need to connect script to cron. To do this we use command
```bash
crontab -e
```
(If you never did this you propably have to choose which text editor you want to use, choose the best for you)
then you go the end of the file and you will have to write this way:
min h dom mom dow dir
it means: Minute Hours DayOfTheMonth Month DayOfWeek Directory
You write however you want to do this script automaticly
### Warning: if it's complicated script and it has to be used all the time it may use more power from your device
In the end you save crontab and if it was wrote well script will be activated when you wanted.Manual

This is the manual for log_archive.sh.

Making the file executable

After downloading or copying the script, use the following command:

chmod u+x log_archive.sh


(Replace log_archive.sh with the proper filename if you changed it).

Once it is executable, you can run the script using either of these commands:

sudo ./log_archive.sh


or

sudo bash log_archive.sh


Warning

If you run the script without sudo, it will not be able to read and copy log files owned by root into the .tar archive.

Making log_archive.sh usable without a password

To use log_archive.sh automatically without a password prompt, we need to configure sudo using visudo.

Open the sudoers configuration file by typing:

sudo visudo


Next, scroll to the end of the file and add this line:

user_name ALL=(ALL) NOPASSWD: /absolute/path/to/log_archive.sh


(Replace user_name and /absolute/path/to/log_archive.sh with your actual Linux username and the absolute path to your script).

Automating with cron

To run the script automatically at a specific day, month, or hour, we need to schedule it using cron. To do this, use the command:

crontab -e


(If this is your first time using cron, you will probably be asked to choose a text editor. Choose whichever you prefer).

Then, go to the end of the file and add a new line using this exact format:

MIN HOUR DOM MON DOW /absolute/path/to/log_archive.sh


This stands for: Minute | Hour | Day of the Month | Month | Day of the Week | Command (Script Path).

Configure these values depending on how often you want the script to run automatically.

Warning

Scheduling heavy scripts to run too frequently (e.g., every minute) may consume excessive system resources and drain power.

Finally, save the file and exit the editor. If formatted correctly, your script will now execute automatically at the scheduled times.
