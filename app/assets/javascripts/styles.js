window.onload = function()
{
function setHieght(){	
var username = document.getElementById("logged_in_user");
username.style.bottom = "-10px";
  }
  setHieght()

function setStyle(){
	var color = "#dbdbdb";
	var a = document.getElementById("title");
	var b = document.getElementById("due");
	var c = document.getElementById("description");
	holders = document.getElementsByClassName("holder");
	for(divs in holders ){

        holders[divs].style.background = color;
        holders[divs].style.padding = "5px";
        holders[divs].style.marginTop = "10px";
	}

	holders.hieght = "6em";
	holders.style.border = "";
    
    a.style.width = "50%";
    b.style.width = "50%";
    c.style.width = "50%;";
       a.style.hieght = "4em";
       b.style.hieght = "4em";
       c.style.hieght = "4em";
       a.style.background = "";

  }
  setStyle()

}
