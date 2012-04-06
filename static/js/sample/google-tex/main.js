$(function() {
      var base_url = "http://chart.apis.google.com/chart?cht=tx&chl="
      $("#math-form").keyup(function(e) {
                                if ("" != $("#math-form").val()) {
                                    var preview_url = base_url + encodeURIComponent($("#math-form").val());
                                    $("#math-preview").attr("src", preview_url);
                                    $("#preview-url").attr("value", preview_url);
                                } else {
                                    $("#math-preview").attr("src", "/static/img/sample/google-tex/not-found.gif");
                                    $("#preview-url").attr("value", "");
                                }
                            });
  })
