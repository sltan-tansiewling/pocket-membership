console.log("Script.js is loaded!");

$(document).ready(function(){
    $('.flip-card .flip-card-inner').click(function() {
        $(this).closest('.flip-card').toggleClass('hover');
        $(this).css('transform, rotateY(180deg)');
    });
})