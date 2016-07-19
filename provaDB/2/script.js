$(document).ready(documentReady);

function documentReady(){
    console.log("I'm ready");

    $(".loadmore").on("click",loadMoreClicked);

}


function loadMoreClicked(){

    console.log("You clicked load more");
    
    var id=$(this).attr("id");
    console.log(id);
    $.ajax({
        method: "POST",
        dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getDescription.php", //Relative or absolute path to file.php file
        data: {pt:id},
        success: function(response) {
       		console.log(response);
            toSend="";
            for(i=0; i<response.length; i++)
            {
            	toSend+="<h1> "+response[i].Marca+" "+response[i].Categoria+"</h1><a href=\"www.google.it\" class=\"loadmore\" id=\""+response[i].ID+"\">LoadMore</a>" ;       	
              }
              $(".results").html(toSend);
       
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}
