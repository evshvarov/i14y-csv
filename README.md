 [![Gitter](https://img.shields.io/badge/Available%20on-Intersystems%20Open%20Exchange-00b2a9.svg)](https://openexchange.intersystems.com/package/iris-interoperability-template)
 [![Quality Gate Status](https://community.objectscriptquality.com/api/project_badges/measure?project=intersystems_iris_community%2Firis-interoperability-template&metric=alert_status)](https://community.objectscriptquality.com/dashboard?id=intersystems_iris_community%2Firis-interoperability-template)
 [![Reliability Rating](https://community.objectscriptquality.com/api/project_badges/measure?project=intersystems_iris_community%2Firis-interoperability-template&metric=reliability_rating)](https://community.objectscriptquality.com/dashboard?id=intersystems_iris_community%2Firis-interoperability-template)
# iris-interoperability-csv-example
This is a simplest example to transform one CSV to another (using Record Mapper)
## What The Sample Does

To make the production run copy data/data.csv and paste into /in folder. the transformed data.csv should appear in /out.

It is an example of using IRIS interoperability to transform data in CSV using Data Transformation class.
What this interoperability does:
1. It transforms csv with Farenheit temperature data observations and results into csv with temperature in Celsius.
it expects  csv files in the /in folder with the structure of two columnns: 1-day of obser (integer), 2 - temperature in Farenheight (integer). [Here is an example](https://github.com/evshvarov/i14y-csv/blob/master/data/data.csv).

2. Every record of the incoming csv is being send as an interoperability message to transformation rule. I used RecordMapper to generate the [message object class](https://github.com/evshvarov/i14y-csv/blob/master/src/esh/i14y/csv/CelciusCSV/Record.cls) and to use [record mapper class](https://github.com/evshvarov/i14y-csv/blob/master/src/esh/i14y/csv/CelciusCSV.cls) to parse incoming csv and to write csv in a resulting file.

3. Interoperability production waits for csv in /in folder and then takes every record from csv as a message to a [routing rule](https://github.com/evshvarov/i14y-csv/blob/master/src/esh/i14y/csv/F2CRoutingRule.cls), which uses [Data Transfomration](https://github.com/evshvarov/i14y-csv/blob/master/src/esh/i14y/csv/F2C.cls) for all the records.
4. After transfomration every record is being written one-by-one into the file with the same name in /out folder.


## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation: ZPM

Open IRIS Namespace with Interoperability Enabled.
Open Terminal and call:
USER>zpm "install esh-i14y-csv"

## Installation: Docker
Clone/git pull the repo into any local directory

```
$ git clone https://github.com/evshvarov/i14y-csv.git
```

Open the terminal in this directory and run:

```
$ docker-compose build
```

3. Run the IRIS container with your project:

```
$ docker-compose up -d
```



## How to Run the Sample

Open the [production](http://localhost:52796/csp/user/EnsPortal.ProductionConfig.zen?PRODUCTION=esh.i14y.csv.F2CProduction) and start it.
duplicate data.csv and put it into /in folder.
The production will process the file in /in folder, create 3 messages (according to a number of lines in the csv) and transform Farenheit into Celcius and put it in a new file at /out folder.

You can alter the [business rule](http://localhost:52796/csp/user/EnsPortal.RuleEditor.zen?RULE=esh.i14y.csv.F2CRoutingRule) to add any different logic. initialy all the messages follow one transformation.


You can also check how the [transformation works](http://localhost:52796/csp/user/EnsPortal.DTLEditor.zen?DT=esh.i14y.csv.F2C.dtl). Here you can see the simple logic of changing Farenheit data to Celcius.


## Additional information

This repository is ready to code in VSCode with the ObjectScript plugin.
Install [VSCode](https://code.visualstudio.com/), [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) and [ObjectScript](https://marketplace.visualstudio.com/items?itemName=daimor.vscode-objectscript) plugin and open the folder in VSCode.

Use the handy VSCode menu to access the production and business rule editor and run a terminal:
<img width="656" alt="Screenshot 2020-10-29 at 20 15 56" src="https://user-images.githubusercontent.com/2781759/97608650-aa673480-1a23-11eb-999e-61e889304e59.png">
