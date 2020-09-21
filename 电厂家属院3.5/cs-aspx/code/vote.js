function vote()
{

if(!frmvote.rvote[0].checked&&!frmvote.rvote[1].checked&&!frmvote.rvote[2].checked
&&!frmvote.rvote[3].checked)
alert("您还没有选择呢？");
else
{
document.frmvote.action="vote.aspx";
document.frmvote.submit();
}

}

function lvote()
{
window.open('lookvote.aspx','_blank','left=10,top=20,width=500,height=250')
}
