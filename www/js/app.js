(function(t){var e;e={content:{dayOneWelcome:{videoUrl:"https://www.youtube.com/watch?v=Sppxdd4vvKY",content:'<h1>What do you know about RMS?</h1><p><center><iframe width="420" height="315" src="http://www.youtube.com/embed/JS_DjKsx7dU?"></center> </iframe></p>'}},modal:function(n){var o,c;o=t(n.currentTarget);c=o.data("id");t(".modal-content").html(e.content[c].content);t(".modal").show();return t(".modal").on("click",function(e){return t(".modal").hide()})}};return t(document).ready(function(){return t("section").on("click",e.modal)})})(jQuery);