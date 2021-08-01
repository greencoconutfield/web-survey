var h02ProductListingHero={$selector:$(".h02-product-listing-hero"),content:".product-listing-hero__content",contentVisibleClass:"product-listing-hero__content--visible",heroText:".product-listing-hero__side",heroTextVisibleClass:"product-listing-hero__side--visible",bgImage:".product-listing-hero__background-img",bgImageVisibleClass:"product-listing-hero__background-img--visible",deviceButtons:".product-listing-hero__buttons--device",deviceButtonsVisibleClass:"product-listing-hero__buttons--visible",swatch:".js-color-swatch",swatchActiveClass:"swatches__swatch--active",swatchColorName:".js-swatch-color-name",init:function(){if(this.$selector.length){this.onLoad();
this.changeSwatches();
this.parallax()
}},onLoad:function(){var a=this;
this.$selector.each(function(){var b=$(this);
b.find(a.content).first().addClass(a.contentVisibleClass);
b.find(a.heroText).addClass(a.heroTextVisibleClass);
if(window.innerWidth>=1200){b.find(a.bgImage).addClass(a.bgImageVisibleClass)
}else{b.find(a.deviceButtons).addClass(a.deviceButtonsVisibleClass)
}$(window).on("resize",function(){if(window.innerWidth>=1200){b.find(a.bgImage).addClass(a.bgImageVisibleClass);
b.find(a.deviceButtons).removeClass(a.deviceButtonsVisibleClass)
}else{b.find(a.deviceButtons).addClass(a.deviceButtonsVisibleClass);
b.find(a.bgImage).removeClass(a.bgImageVisibleClass)
}})
})
},changeSwatches:function(){var a=this;
a.$selector.each(function(){var b=$(this).find(a.swatch);
b.on("click",function(){var d=$(this).parent().index();
var c=$(this).text();
var e=$(this).closest(".h02-product-listing-hero");
e.find(a.content).removeClass(a.contentVisibleClass);
e.find(a.content).eq(d).addClass(a.contentVisibleClass);
e.find(a.swatchColorName).text(c);
b.removeClass(a.swatchActiveClass);
$(this).addClass(a.swatchActiveClass)
})
})
},parallax:function(){var b=$(window).width()>992&&$(window).width()<1200&&$(window).width()/$(window).height()>1&&$(window).width()/$(window).height()<1.3;
var a=window.screen.width>=1200;
if(b||a){$(window).on("scroll",function(){var c=$(this).scrollTop();
$(".js-product-listing-hero").each(function(){var d=$(this).offset().top;
var g=$(this).offset().top+$(this).height();
var e=(c-d)/1000;
var f="translateY("+(c-d)*0.6+"px)";
if($(window).scrollTop()>d+50&&$(window).scrollTop()<g){$(this).find(".js-plh-container").css("transform",f);
if(e<=1){$(this).find(".product-listing-hero__overlay").css("opacity",e)
}}else{if($(window).scrollTop()<d){$(this).find(".js-plh-container").removeAttr("style");
$(this).find(".product-listing-hero__overlay").removeAttr("style")
}}})
})
}}};
$(function(){h02ProductListingHero.init()
});