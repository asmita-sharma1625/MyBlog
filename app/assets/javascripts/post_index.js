$(document).ready(function(){
    var colors = ["primary", "success", "info", "warning", "danger"];
    $('div.alert').addClass(function(){
        index = this.id%5;
        color = "bg-"+colors[index];
        return color;
    });
});
