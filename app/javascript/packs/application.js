// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// https://stevepolito.design/blog/rails-6-bootstrap-4-webpacker-tutorial/
import jQuery from "jquery";
window.$ = jQuery;
window.jQuery = jQuery;

import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
Rails.start()
// Turbolinks.start()
ActiveStorage.start()
import "bootstrap"
// require("bootstrap")
// document.addEventListener("ready", function() {
//     $(function () {
//         $('[data-toggle="tooltip"]').tooltip()
//         $('[data-toggle="popover"]').popover()
//     })
// })