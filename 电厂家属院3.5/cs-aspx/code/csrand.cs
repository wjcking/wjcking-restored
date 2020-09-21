using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Security;

namespace csrand
{
public class Rand
{
public string SeRand()
{
Random P1 = new Random();
Random P2= new Random();
Random P3= new Random();
Random P4= new Random();
Random P22= new Random();
Random P44= new Random();
int intR1,intR2,intR3,intR4,intR22,intR44;

int intMV1=9;
int intMV2=9;
int intMV3=13;
int intMV4=16;


intR1=P1.Next(intMV1);
intR2=P2.Next(intMV2);
intR3=P3.Next(intMV3);
intR4=P4.Next(intMV4);

intR22=P22.Next(2,4);
intR44=P44.Next(7,8);

string strR1,strR2,strR3,strR4;
strR1=intR1.ToString();;
strR2=Math.Abs(intR2-intR22).ToString();
strR3=Math.Abs(intR3-intR22).ToString();
strR4=Math.Abs(intR4-intR44).ToString();
return strR1+strR2+strR3+strR4;
}
}

}
