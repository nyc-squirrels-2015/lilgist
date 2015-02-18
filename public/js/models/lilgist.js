function LilGist(params) {

  this.id = params.id;
  this.name = params.name;
  this.content = params.content;

}

var lilGists = []
getLilGists = function(){
  $.ajax({
    type: "get",
    url: "/lilgists.json",
    success: function(response){
      var lilgists = [];
      $.each(response, function(x,stuff){
        lilgists.push(new LilGist(stuff));
      });
      lilGists = lilgists;
    }
  });
};


// LilGist.all = function(){
//   $.ajax({
//     type: "get",
//     url: "/lilgists.json",
//     success: function(response){
//       var lilgists = [];
//       $.each(response, function(x,stuff){
//         lilgists.push(new LilGist(stuff));
//       });

//     }
//   });
// };

// LilGist.prototype.destroy = function(){
//   $.ajax({
//     type: 'delete'
//     url: 'funciton'
//   })
// }
