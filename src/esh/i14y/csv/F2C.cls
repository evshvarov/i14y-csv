Class esh.i14y.csv.F2C Extends Ens.DataTransformDTL [ DependsOn = esh.i14y.csv.CelciusCSV.Record ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='esh.i14y.csv.CelciusCSV.Record' targetClass='esh.i14y.csv.CelciusCSV.Record' create='new' language='objectscript' >
<annotation>Fahrenheit to Celsius transformation</annotation>
<assign value='source.%Source' property='target.%Source' action='set' />
<assign value='source.Day' property='target.Day' action='set' />
<assign value='(source.Temperature-32)*5/9' property='target.Temperature' action='set' />
</transform>
}

}

