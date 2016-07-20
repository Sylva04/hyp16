$(document).ready(documentReady);

function documentReady(){
    console.log("I'm ready");

    $(".loadmore").on("click",loadMoreClicked);

}


function loadMoreClicked(){

    console.log("You clicked load more");
    
    var id=$(this).attr("id");
          console.log(id);  
    if(id=='smartphone' || id=='TV' || id=='Tablet/PC' || id=='Decoder' || id=='Modem' || id=='Telecamere')
	{
    $.ajax({
        method: "POST",
        dataType: "json", //type of data
        crossDomain: true, //localhost purposes


        url: "../php/getCategoria.php", //Relative or absolute path to file.php file
        data: {pt:id},
        success: function(response) {
       		console.log(response);
            toSend="";
            for(i=0; i<response.length; i++)
            {
            	toSend+="<a href=\"#\" class=\"loadmore\" id=\""+responce[i].Modello+"\"> <h1> "+response[i].Marca+" "+response[i].Categoria+"</h1> <img src=\"Devices/"+response[i].IMG+".png\"></a>" ;       	
              }
              $(".results").html(toSend);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
        
    });
   }else{
   if(id=='offerta' || id=='new')
   {
   $.ajax({
        method: "POST",
        dataType: "json", //type of data
        crossDomain: true, //localhost purposes


        url: "../php/getOfferte.php", //Relative or absolute path to file.php file
        data: {pt:id},
        success: function(response) {
       		console.log(response);
            toSend="";
            for(i=0; i<response.length; i++)
            {
            	toSend+="<h1> "+response[i].Marca+" "+response[i].Categoria+"</h1> <img src=\"Devices/"+response[i].IMG+".png\">" ;       	
              }
              $(".results").html(toSend);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
        
    });
   }
   else{
   $.ajax({
        method: "POST",
        dataType: "json", //type of data
        crossDomain: true, //localhost purposes


        url: "../php/getDevice.php", //Relative or absolute path to file.php file
        data: {pt:id},
        success: function(response) {
       		console.log(response);
            toSend="";
            for(i=0; i<response.length; i++)
            {
            	toSend+="<h1> "+response[i].Marca+" "+response[i].Categoria+"</h1> <img src=\"Devices/"+response[i].IMG+".png\">" ;       	
              }
              $(".results").html(toSend);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
        
    });
   }
   }
}
