/// business rule to run transformation
Class esh.i14y.csv.F2CRoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="esh.i14y.csv.F2CProduction">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<when condition="1" comment="">
<send transform="esh.i14y.csv.F2C" target="FileOut"></send>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}

