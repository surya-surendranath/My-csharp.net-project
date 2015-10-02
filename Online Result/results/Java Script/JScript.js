// JScript File

 function UpdateField(chkID,txt1,txt2,total)
    {
        if(document.getElementById(chkID).checked==true)
        {
            var txtval1=document.getElementById(txt1).value !="" ? document.getElementById(txt1).value : "0";
            var txtval2=document.getElementById(txt2).value !="" ? document.getElementById(txt2).value : "0";
            var total1=parseInt(txtval1)+parseInt(txtval2);
            document.getElementById(total).innerHTML=total1;
            if(document.getElementById(txt1).value=="" && document.getElementById(txt2).value=="")
            document.getElementById(total).innerHTML="";
            document.getElementById(txt1).disabled=false;
            document.getElementById(txt2).disabled=false;
        }
        else
        {
            document.getElementById(txt1).disabled=true;
            document.getElementById(txt2).disabled=true;
            //document.getElementById(txt1).value="";
           // document.getElementById(txt2).value="";
            //document.getElementById(total).innerHTML="";
        }
    }
function SelectAll(headerID,gridID)
    {
    debugger;
     var grid = document.getElementById(gridID);
     var selectId = document.getElementById(headerID);

        if(grid.rows.length>0)
        {
            var cell;
            for(var i=1;i<grid.rows.length;i++)
            {
                cell=grid.rows[i].cells[0];
                for(var j=0;j<cell.childNodes.length;j++)
                {
                    if(cell.childNodes[j].type=="checkbox")
                    {
                        cell.childNodes[j].checked=selectId.checked;
                    }
                }  
            }
            var input=grid.document.getElementsByTagName("input");
            if(selectId.checked==true)
            {
                for(var i=0;i<input.length;i++)
                {
                    if(input[i].type=="text")
                    {
                        var txtId=document.getElementById(input[i].id);
                        txtId.disabled=false;
                    }
                }
            }
        else
             {
                for(var i=0;i<input.length;i++)
                {
                    if(input[i].type=="text")
                    {
                        var txtId=document.getElementById(input[i].id);
                        txtId.disabled=true;
                    }
                }
            }           
        }
    }
    
    function SelectChange(chkID,txt1,txt2,total)
    {
        var chk=document.getElementById(chkID);
            UpdateField(chkID,txt1,txt2,total);
    }
    
    function radiobuttonchange(rbnID,gridID)
    {
        var rbn=document.getElementById(rbnID);
        var grid=document.getElementById(gridID);
        for(var i=0;i<rbn.rows.length;i++)
        {
            for(var j=0;j<rbn.rows[i].cells.length;j++)
            {
                var childcontrol=rbn.rows[i].cells[j].childNodes[0];
                if(childcontrol.value=="1" && childcontrol.checked)
                {
                    grid.style.visibility="hidden";
                }
                else
                {
                    grid.style.visibility="visible";
                }
            }
        }
    }