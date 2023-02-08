Class esh.i14y.csv.F2C3 Extends Ens.DataTransformDTL [ DependsOn = (esh.i14y.csv.CelciusCSV.Record, esh.i14y.csv.CelciusCSV.RecordThree) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='esh.i14y.csv.CelciusCSV.Record' targetClass='esh.i14y.csv.CelciusCSV.RecordThree' create='new' language='objectscript' >
<assign value='source.%Source' property='target.%Source' action='set' />
<assign value='source.Day' property='target.Day' action='set' />
<assign value='(source.Temperature-32)*5/9' property='target.Temperature' action='set' />
<if condition='target.Temperature&gt;20' >
<true>
<assign value='"Warm"' property='target.Weather' action='set' />
</true>
<false>
<assign value='"Cold"' property='target.Weather' action='set' />
</false>
</if>
</transform>
}

}
