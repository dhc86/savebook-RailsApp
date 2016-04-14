// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap-sprockets
//= require angular
//= require jquery.turbolinks

$( document ).ready(function() {


 
  $('.find-isbn-button').on('click', function(event){
    event.preventDefault();

    if ($('#isbn-entered').val() == ""){
      alert("Plase enter an isbn number!");
    }
    else{
      var isbn = $('#isbn-entered').val();

      $.ajax({
        url: 'https://www.googleapis.com/books/v1/volumes?q=isbn:'+isbn,
        method: 'GET',
        dataType: 'jsonp',
        success: function(data){
          // debugger
          if (data.totalItems == 0){
            alert("Please enter a valid isbn, book not found.");
          }
          else {
            title = data["items"][0]["volumeInfo"]["title"];
            author = data["items"][0]["volumeInfo"]["authors"][0];
            description = data["items"][0]["volumeInfo"]["description"];
            if (data["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"] == null){
              picture_url = 'http://i.imgur.com/Ibd6JdC.jpg'
            }
            else{
              picture_url = data["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]; 
            }   
            $('.book_title input').val(title);
            $('.book_author input').val(author);
            $('.book_isbn input').val(isbn);
            $('.book_description textarea').val(description);
            $('.book_picture_url input').val(picture_url);
            debugger
          }
        }
      });      
    }





  });
 
});