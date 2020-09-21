
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script language=cs runat=server>

public void Page_load()
{
  // Connection set up
  String strConnection = Application["db_app"].ToString();
  OleDbConnection objConnection = new OleDbConnection(strConnection);
  String strSQL = "SELECT * from db_vote";

  OleDbDataAdapter objAdapter = new OleDbDataAdapter(strSQL, objConnection);

  DataSet objDataSet = new DataSet();
  objAdapter.Fill(objDataSet, "db_vote");
 

  String strResultsHolder;
  strResultsHolder = "<img src=images/cs-aspx.gif width=99 height=27><hr size=1><br><table width=96%  border=1 style='border-collapse: collapse' bordercolor=#111111 cellpadding=0 cellspacing=0>";
  strResultsHolder += "<tr>";

  foreach (DataColumn c in objDataSet.Tables["db_vote"].Columns)
  {
    strResultsHolder += "<font size=2><font face=宋体><td>" + c.ColumnName + "</td>";
  }
  strResultsHolder += "</font></tr>";

  int value, blankValue;
  foreach (DataRow r in objDataSet.Tables["db_vote"].Rows)
  {
    value = 100*Convert.ToInt32(r["人气"])/400;
    blankValue = 100 - value;
    strResultsHolder += "<tr><td width=30%><font size=2>" + r["百分比"] + "</font></td>" +
                        "<td width=60%><table width=100%><tr>" +
                        "<td width=" + value.ToString() + "% bgcolor=blue >" +
                        "&nbsp;</td>" +
                        "<td width=" + blankValue.ToString() + "%>&nbsp;</td>" +
                        "</tr></table></td>" +
                        "<td width=20%><font size=2>" + r["人气"].ToString() +
                        "</td></tr></font>";
  }
  strResultsHolder += "</table></font><br><hr size=1>";

display.InnerHtml = strResultsHolder;
}

</script>
<div id=display runat=server/>