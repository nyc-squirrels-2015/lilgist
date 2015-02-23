$(document).ready(function() {
  $('#login-link').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });


  $('#signup-link').click(function (event) {
    event.preventDefault();
    $('#template-container').loadTemplate($('#signup'))
      // $('#signupnonmodal').submit(function (event) {
      //   event.preventDefault();
      //   User.create();

      // })
  });
});
