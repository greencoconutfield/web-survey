var h06BannerImages={$selector:$(".h06-in-page-banner"),init:function(){if(this.$selector.length){this.changeImage()
}},changeImage:function(){var a=window.innerWidth;
$(".h06-in-page-banner").each(function(d,g){var i=$(g).find(".banner-block");
var f="";
var c=i.attr("data-bg-type");
if(c=="image"){var e=i.attr("data-plp-pc");
var b=i.attr("data-plp-pad");
var h=i.attr("data-plp-mob");
if(a<534){if(h){f="url("+h+")"
}}else{if(a<1200&&a>=534){if(b){f="url("+b+")"
}}else{if(e){f="url("+e+")"
}}}i.css("background-image",f)
}})
}};
$(function(){h06BannerImages.init()
});