# Systemctrl scripts

Those scripts are to control the server service for *SimpleNeutron* and *ADCNeutron*.

Place the wanted script into the following directory:

* /etc/systemd/system

Once it is there and the server application is copied to */home/debian/app*.

The following example shows how to enable the *adcneutron service* for automatic start: 

```
systemctl enable adcneutron.service
```

After the service is enabled it is possible to start, stop or restart the service with the following commands:

```
systemctl start adcneutron.service
systemctl stop adcneutron.service
systemctl restart adcneutron.service
```
