var motdContainer;

$(document).ready(function() {
  motdContainer = $('#motd')
  Motd.getCurrent()
      .then(renderMotd)
})

 function getCurrent() {
    $.ajax({
      url: "/api/v1/motds/current",
      success: function(motd) {
        renderMotd(motd);
      }
    });
  },

  function renderMotd(motd) {
    var renderedMotd = "<p>"+ motd.message + "</p><p>" + motd.author;
    $("#motd").text(renderedMotd);
    debugger;
  }
}
