Class esh.i14y.csv.CelciusCSV.RecordThree Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

/// RECORDMAP: Generated from RecordMap 'esh.i14y.csv.CelciusCSV'
/// on 2023-01-21 at 17:33:11.169 [2023-01-21 17:33:11.169 UTC]
/// by user _SYSTEM
Property Day As %Integer;

Property Temperature As %Integer;

Property Weather As %String;

Parameter RECORDMAPGENERATED = 1;

Storage Default
{
<Data name="RecordThreeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Day</Value>
</Value>
<Value name="3">
<Value>Temperature</Value>
</Value>
<Value name="4">
<Value>%Source</Value>
</Value>
<Value name="5">
<Value>Weather</Value>
</Value>
</Data>
<DataLocation>^esh.i14y.csv.C82B3.RecordThreeD</DataLocation>
<DefaultData>RecordThreeDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^esh.i14y.csv.C82B3.RecordThreeD</IdLocation>
<IndexLocation>^esh.i14y.csv.C82B3.RecordThreeI</IndexLocation>
<StreamLocation>^esh.i14y.csv.C82B3.RecordThreeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
