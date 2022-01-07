require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import "../stylesheets/application";

$(document).on("turbolinks:load", function(){
  $("#close-modal").on("click", function(){
    $("#modal-wrapper").fadeOut();
  });

  $("#new-btn").on("click", function(){
    $("#modal-wrapper").fadeIn();
  });
});