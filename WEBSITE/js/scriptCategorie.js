$(document).ready(documentReady);

function documentReady(){
    console.log("I'm ready");

    triggerLoadmore();

}


function loadMoreClicked(){
	sl1='http://hyp16.altervista.org/img/SL1';
	sl2='http://hyp16.altervista.org/img/SL2';
 	sl3='http://hyp16.altervista.org/img/SL3';
    sl4='http://hyp16.altervista.org/img/SL4';
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
            	toSend+="<center>"+response[i].Marca+"<br>"+response[i].Modello+"<br><img src=\""+response[i].IMG+".png\" height=\"142\" width=\"142\"><br><a href=\"#\" class=\"loadmore\" id=\""+response[i].ID+"\">"+"Load More</a><br></center><br>" ;       	
              }
               $(".results").html(toSend);
				triggerLoadmore();
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
             toSend+="<center>"+response[i].Marca+"<br>"+response[i].Modello+"<br><img src=\""+response[i].IMG+".png\" height=\"142\" width=\"142\"><a href=\"#\" class=\"loadmore\" id=\""+response[i].ID+"\">"+"Load More</a><br></center><br>" ;       	
                }
              $(".results").html(toSend);
				triggerLoadmore();
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
        
    });
   }else{
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
            	toSend+="<center><h2>"+response[i].Marca+"<br>"+response[i].Modello+"</h2><br>";
                toSend+="<img src=\""+response[i].IMG;
                toSend+=".png\" class=\"device\" height=\"300\" width=\"300\"></center><br><b>Descrizione</b> :"+response[i].Descrizione+"<br><b>Tech:</b> "+response[i].Tech;
              	toSend+="<br><b>Prezzo</b>:"+response[i].Prezzo+"<br>";
                if(response[i].SL1==1)
                	 toSend+="<a href=\"http://hyp16.altervista.org/html/slHome.html#tv\"><img src=\""+sl1+".png\" class=\"device\"></a>";
                if(response[i].SL2==1)
                	 toSend+="<a href=\"http://hyp16.altervista.org/html/slHome.html#health\"><img src=\""+sl2+".png\" class=\"device\"></a>";
                 if(response[i].SL3==1)
                 	toSend+="<a href=\"http://hyp16.altervista.org/html/slHome.html#family\"><img src=\""+sl3+".png\" class=\"device\"></a>";
                if(response[i].SL4==1)
                	 toSend+="<a href=\"http://hyp16.altervista.org/html/slHome.html#personal\"><img src=\""+sl4+".png\" class=\"device\"></a>";
                toSend+="<br><br><a href=\"http://hyp16.altervista.org/html/Assistance/assupport.html\"> Assistanza per questo device</a>";
              }
              $(".results").html(toSend);
              triggerLoadmore();
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
        });
        }
}
}

   function triggerLoadmore() {
$(".loadmore").unbind("click"); //questo cancella gli eventuali script che ci sono già sul click 
$(".loadmore").on("click",loadMoreClicked); //riagganci lo script 
}
