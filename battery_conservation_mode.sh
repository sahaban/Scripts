#!/bin/bash

if [ "$1" == "enable" ];
	then
		echo -e "\n Enabling battery conservastion mode \n"
		#Command for enabling battery conservation mode. Only tested with Lenovo laptops
		sudo bash -c 'echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
		sleep 10
		echo "
		*****************************
		*                           *
		* CONSERVATION MODE ENABLED *
		*                           *
		*****************************
		"
elif [ "$1" == "disable" ];
	then
		echo -e "\n Disabling battery conservastion mode \n"
		#Command for disabling battery conservation mode. Only tested with Lenovo laptops
                sudo bash -c 'echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
                sleep 10
                echo "
                ******************************
                *                            *
                * CONSERVATION MODE DISABLED *
                *                            *
                ******************************
                "
else
	echo -e "The options should be either enable or disable"
fi
