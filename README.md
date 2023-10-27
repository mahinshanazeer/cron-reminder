# cron-reminder
To create a simple health to notify hourly using crontab and bash script


reating an Hourly Reminder for IT Professionals using Cronjob and Bash Script

To set up an hourly reminder, follow these steps:

1. Copy the Script:

Create a new directory named alarms in your home directory if it doesn't already exist:
~~~
mkdir ~/alarms
~~~
Copy the contents of the provided healthalarm.sh file into this directory.

2. Create the Bash Script:

In the alarms directory, create a new file named healthalarm.sh
~~~
touch ~/alarms/healthalarm.sh
~~~
Paste the contents of the provided script into this file.

3. Edit the Script (Optional):

If you want to customize the reminder message or the sound, you can edit the healthalarm.sh file with your preferred details.
Set Permissions:

Make sure the script is executable:
~~~
chmod +x ~/alarms/healthalarm.sh
~~~

4. Add Cronjob:

Open your crontab for editing:
~~~
crontab -e
~~~

5. Add the following line to run the script every hour:
~~~
0 * * * * /bin/bash ~/alarms/healthalarm.sh
~~~
Save and exit the file.

Now, your system will execute the reminder script every hour.

Please note that the provided instructions assume that you have set up your environment as described. If there are any specific details or additional steps required, please let me know.



Explanation on bash script:
----------------------------

The lines export DISPLAY=:0 and export PULSE_SERVER=unix:/run/user/1000/pulse/native are used in a Bash script to specify the display and PulseAudio server for graphical and audio operations respectively.
    1. export DISPLAY=:0:
        ◦ The DISPLAY variable specifies which X server (i.e., display) the graphical applications should connect to. In a typical desktop environment, the default display is :0, which means the first local display.
        ◦ When you run a script from a terminal within a GUI environment, this variable is usually set automatically to the active display.
        ◦ However, if you're running a script in a context where there is no active display (e.g., in a cron job or on a headless server), you need to manually set the display to ensure that any graphical operations (like notifications) can be sent to the correct display.
    2. export PULSE_SERVER=unix:/run/user/1000/pulse/native:
        ◦ The PULSE_SERVER variable specifies the address of the PulseAudio server that the script should connect to for audio operations.
        ◦ PulseAudio is a sound server used by most Linux distributions to manage audio. It provides a way for multiple applications to share the audio hardware.
        ◦ In this case, the script is being told to connect to a PulseAudio server running on the local machine. The address unix:/run/user/1000/pulse/native refers to the socket file that PulseAudio uses to communicate.
        ◦ The 1000 in the path corresponds to the user ID of the user running the PulseAudio server. This may be different on your system, so you might need to adjust this value.
        ◦ Similar to the DISPLAY variable, if you're running this script in a context where PulseAudio might not be available (like in a cron job), you'll need to set this variable to ensure that audio operations work correctly.
These lines are useful when you're running a script in a context where it might not have access to the usual environment variables (e.g., in a cron job or on a headless server). They help ensure that the script can interact with the display and audio system correctly.
