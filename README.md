## How to enable and disable battery conservation mode on Lenovo laptops

We can use the following commands to enable and disable battery conservation mode in Fedora (At least that's what I've tried so far).

**Check Battery Conservation Status:**
`cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode`

Result: 0 = disabled, 1= enabled

**Disable Battery Conservation Mode:**

`sudo bash -c 'echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'`

**Enable Battery Conservation Mode:**

`sudo bash -c 'echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'`


There are few useful GNOME extension present for this but I find using the terminal is much better.

