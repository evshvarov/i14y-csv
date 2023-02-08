/// RECORDMAP: Generated from RecordMap 'esh.i14y.csv.CelciusCSV'
/// on 2023-01-21 at 17:33:11.169 [2023-01-21 17:33:11.169 UTC]
/// by user _SYSTEM
Class esh.i14y.csv.CelciusCSV.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property Day As %Integer;

Property Temperature As %Integer;

Parameter RECORDMAPGENERATED = 1;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Day</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>Temperature</Value>
</Value>
</Data>
<DataLocation>^esh.i14y.csv.Celciu82B3.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^esh.i14y.csv.Celciu82B3.RecordD</IdLocation>
<IndexLocation>^esh.i14y.csv.Celciu82B3.RecordI</IndexLocation>
<StreamLocation>^esh.i14y.csv.Celciu82B3.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
