// $(document).ready(function() {
// $.when(getLilGists()).done(function(){

//   // showLilGists= function(lgists){
//   //   for (var i = 0, len = lgists.length; i < len; i++) {
//   //     console.log(lilGists[i.name]);
//   //    $('#lilgists').loadTemplate($('#show-lil-gists-template'),
//   //     {
//   //       name: lilGists[i.name],
//   //       content: lilGists[i.content],
//   //     });
//   //   };
//   // }

//   // $('#main-div').find($('#lilgists').loadTemplate($('#show-lil-gists-template'),)


//   $('#toggle-create').click(function (event) {
//     event.preventDefault();
//     $('#main-div').loadTemplate($('#create-lil-gist-template'))
//       $('#create-lil-gist-form').submit(function (event) {
//         event.preventDefault();
//         $.ajax({
//           type: 'post',
//           url: '/lilgists/create.json',
//           data: ($('#create-lil-gist-form').serialize()),
//           success: $('#main-div').loadTemplate($('#show-lil-gists-template'))
//         })
//       });
//   });

// /* allows tabbing in code input */
//   $(document).delegate('#code-input', 'keydown', function(e) {
//       var keyCode = e.keyCode || e.which;
//       if (keyCode == 9) {
//         e.preventDefault();
//         var start = $(this).get(0).selectionStart;
//         var end = $(this).get(0).selectionEnd;
//         $(this).val($(this).val().substring(0, start)
//                     + "\t"
//                     + $(this).val().substring(end));
//         $(this).get(0).selectionStart =
//         $(this).get(0).selectionEnd = start + 1;
//       }
//     });
// });
// });
