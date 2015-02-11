function remove_fields(link) {
        $(link).prev("input[type=hidden]").val("1");
        //$(link).closest(".formfields").hide();
}

function add_fields(link, association, content) {  
    var new_id = new Date().getTime();  
    var regexp = new RegExp("new_" + association, "g");  
    //$(link).parent().before(content.replace(regexp, new_id));  
    $(link).siblings(".table").children("tbody").append(content.replace(regexp, new_id));  
}





$(document).on('click', '.remove_link', function () {
        remove_fields(this);
    });

