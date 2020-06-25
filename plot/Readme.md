# Pot ADC Data

This little tool is to plot the ADC data. It uses [Jupyter Lab](https://jupyter.org/) and takes the data recoded by the ADCNeutron client directly to plot a specific range of the data. The sensor to be plotted must be chosen.

## Install

The following tools need to be installed before actually installing this little piece of software:

* [Python 3](https://www.python.org/downloads/) 
* [pip](https://pypi.org/project/pip/)

After installing both requirements open a command line and change to this directory and run the following command:

```sh
pip install -r requirements.txt
```

## Usage

Open a command line and change to the directory from where you want to work in. It may be a good idea to use the directory where the sensor data is located. After enter this command:

```sh
jupyter lab
```

The browser will open. There you select the file *ADC-Plot.ipynb* from this repository or a copy of it and open it as notebook (double click will do).

You will see a notebook with a few of commands showing an example plot of sensor data. To plot own data change the file to your own data and run the commands in order. The last two commands in the example are the actual plot functions. It reads the data. What there is to know you can find in the next sub section.

### Plot function

There are two functions to plot data:

* read_data - reads the actual ADC data. It's fast :)
* plot_data - draws a beautiful diagram. It's fast, too!

The function *read_data* takes 4 arguments. The first is the number of the Sensor (1 to 8). The next two are start and stop of the data. If you set both to 0 all the available data is plotted. You can zoom into the data using those two parameters. The last parameter is the file name of the file containing the sensor data.

The *plot_data* function plots the data returned by *read_data*. Be sure to 
actually use *read_data* correctly before!
