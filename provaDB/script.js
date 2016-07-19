$(document).ready(documentReady);

function documentReady(){
    console.log("I'm ready");

    $(".loadmore").on("click",loadMoreClicked);

}


function loadMoreClicked(){

    console.log("You clicked load more");
    
    var id=$(this).attr("id");
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "getDescription.php", //Relative or absolute path to file.php file
        data: {pt:id},
        success: function(response) {
            $(".results").html(" "+response);
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}
