Class esh.i14y.csv.F2CProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="esh.i14y.csv.F2CProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Router" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">esh.i14y.csv.F2CRoutingRule</Setting>
  </Item>
  <Item Name="FileIn" Category="" ClassName="EnsLib.RecordMap.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="RecordMap">esh.i14y.csv.CelciusCSV</Setting>
    <Setting Target="Adapter" Name="FilePath">/home/irisowner/irisdev/in</Setting>
    <Setting Target="Host" Name="TargetConfigNames">Router</Setting>
    <Setting Target="Host" Name="HeaderCount">1</Setting>
  </Item>
  <Item Name="FileOut" Category="" ClassName="EnsLib.RecordMap.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="RecordMap">esh.i14y.csv.CelciusCSV</Setting>
    <Setting Target="Adapter" Name="FilePath">/home/irisowner/irisdev/out</Setting>
    <Setting Target="Host" Name="Filename">%f</Setting>
  </Item>
</Production>
}

}
