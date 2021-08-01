var h01HeroProductCarousel={$selector:$(".h01-hero-product-carousel"),heroCarouselSlider:".js-hero-carousel-slider",heroCarouselQuickviewVisibleClass:"hero-carousel__slider--quickview-visible",heroCarouselSlide:".hero-carousel__slide",progressCircle:".js-progress-circle",progressLine:".js-progress-line",openQuickviewBtn:".js-open-quickview",closeQuickviewBtn:".js-close-quickview",quickviewPopup:".js-quickview-popup",quickviewOpenedClass:"hero-quickview--opened",quickviewSlider:".js-hero-quickview-slider",swatchBtn:".js-quickview-swatch",swatchBtnSelectedClass:"hero-quickview__swatch--selected",quickviewBg:".hero-carousel__inner-gradient",quickviewBgActiveClass:"hero-carousel__inner-gradient--active",productImage:".hero-carousel__img",productImageActiveClass:"hero-carousel__img--active",flatImage:".hero-quickview__flat-img",flatImageActiveClass:"hero-quickview__flat-img--active",circleStop:false,maskedImage:".hero-quickview__media--masked",maskedImageActiveClass:"hero-quickview__media--masked-active",circleOffset:94,slideDuration:7000,animateCircle:null,heroCarousel:null,animateFirstCircle:null,pageLoaded:false,init:function(){if(this.$selector.length){this.bgInitDataSrc();
this.videoInitDataSrc();
this.initHeroCarousel();
this.quickviewSwatchSelection()
}},initHeroCarouselFirstCircle:function(){var f=this;
var c=$(f.heroCarouselSlider).find(".swiper-pagination-bullet-active");
var e=0;
var d=0;
if($(window).width()>991){e=f.slideDuration/f.circleOffset;
d=100/f.circleOffset;
var a=f.circleOffset;
f.animateFirstCircle=setInterval(function(){a=a-d;
c.find(f.progressCircle).css("stroke-dashoffset",a+"px");
if(a<=0){clearInterval(f.animateFirstCircle);
c.find(f.progressCircle).css("stroke-dashoffset",0+"px");
setTimeout(function(){c.find(f.progressCircle).css("stroke-dashoffset",f.circleOffset+"px")
},50)
}},e)
}else{e=100;
d=100*e/f.slideDuration;
var b=d;
f.animateFirstCircle=setInterval(function(){b=b+d;
c.find(f.progressLine).css("width",b+"%");
if(b>=100){clearInterval(f.animateFirstCircle);
c.find(f.progressLine).css("width",100+"%");
setTimeout(function(){c.find(f.progressLine).css("width",0+"%")
},50)
}},e)
}},initHeroCarousel:function(){var f=this;
var d;
var c=f.slideDuration;
var a=$(".hero-carousel").attr("data-cancelrandom");
if(a=="true"){d=0
}else{d=Math.floor(Math.random()*$(f.heroCarouselSlide).length)
}var e=new Swiper(this.heroCarouselSlider,{initialSlide:d,watchSlidesProgress:true,watchSlidesVisibility:true,loop:true,effect:"fade",speed:400,init:false,preventInteractionOnTransition:true,simulateTouch:false,touchAngle:30,longSwipes:false,followFinger:false,longSwipesRatio:0.8,lazy:{loadPrevNext:true},autoplay:{delay:c,disableOnInteraction:false},navigation:{nextEl:".swiper-button-next",prevEl:".swiper-button-prev"},pagination:{el:".hero-carousel__slider > .swiper-pagination",type:"bullets",clickable:true,renderBullet:function(g,h){return'<button class="'+h+'" type="button"><span class="'+h+'-circle js-progress-line"></span><svg width="32" height="32" viewBox="0 0 32 32"><circle class="'+h+'-progress-circle js-progress-circle" cx="16" cy="16" r="15" fill="none" stroke-width="1.5" /></svg></button>'
}},on:{slideChangeTransitionStart:function(){if(f.pageLoaded){clearInterval(f.animateFirstCircle);
clearInterval(f.animateCircle);
$(f.heroCarouselSlider).find(".swiper-slide-animated").removeClass("swiper-slide-animated");
if($(window).width()>991){$(f.heroCarouselSlider).find(".swiper-pagination-bullet").find(f.progressCircle).css("stroke-dashoffset",f.circleOffset+"px")
}else{$(f.heroCarouselSlider).find(".swiper-pagination-bullet").find(f.progressLine).css("width",0+"%")
}}},slideChangeTransitionEnd:function(){if(f.pageLoaded){var h=$(f.heroCarouselSlider).find(".swiper-slide-active");
var g=$(f.heroCarouselSlider).find(".swiper-pagination-bullet-active");
var j=h.find(".hero-carousel__video");
var i=$(".swiper-pagination-bullets");
h.addClass("swiper-slide-animated");
i.removeClass("pagination-bullet-black");
if(h.find(".hero-carousel__content").hasClass("hero-title_black")){i.addClass("pagination-bullet-black")
}if(j.hasClass("swiper-lazy")&&!j.hasClass("hero-carousel__video--finished")){j.addClass("hero-carousel__video--finished");
j[0].play()
}if($(window).width()>991){if(!f.circleStop){f.animateSlideProgress(g.find(f.progressCircle),c)
}}else{f.animateSlideProgress(g.find(f.progressLine),c);
if($(f.heroCarouselSlider).hasClass(f.heroCarouselQuickviewVisibleClass)){var k=$("."+f.quickviewOpenedClass);
$(f.heroCarouselSlider).removeClass(f.heroCarouselQuickviewVisibleClass);
$(f.heroCarouselSlide).removeClass(f.quickviewOpenedClass);
e.autoplay.start();
setTimeout(function(){$(".hero-quickview__slider .swiper-wrapper").animate({scrollTop:0},100);
k.find(".hero-carousel__media").detach().insertAfter(k.find(".hero-carousel__content"))
},400)
}}}$(".hero-carousel__slide a,.hero-carousel__slide button").attr("tabindex","-1");
$(".hero-carousel__slide.swiper-slide-active a,.hero-carousel__slide.swiper-slide-active button").attr("tabindex","0")
}}});
f.heroCarousel=e;
e.on("init",function(){var h=$(".hero-carousel__slide[data-swiper-slide-index='"+d+"'] .hero-carousel__content");
var g=$(".swiper-pagination-bullets");
f.initHeroCarouselFirstCircle();
if(h.hasClass("hero-title_black")){g.addClass("pagination-bullet-black")
}if($(window).width()<992){$(".hero-carousel__title").each(function(){var k=$(this).parents(".hero-carousel__slide-wrap").find(".hero-carousel__subtitle").height();
var i=parseInt(36/window.innerWidth*100);
if($(this).parents(".hero-carousel__slide-multiple").length==0){if(k==null||k==0){var j=$(this).height()/window.innerWidth*100;
if(j<11){$(this).parents(".hero-carousel__slide-wrap").find(".hero-carousel__img").css({top:"38vw",maxWidth:"85%"})
}}}})
}if($(window).width()<992){$(".hero-carousel__title").each(function(){var n=$(this).parents(".hero-carousel__slide-wrap");
var m=n.find(".hero-carousel__subtitle").height();
var r=n.find(".hero-carousel__content>div:eq(-1)").children();
var p=r.length?r.eq(0).offset().top:n.find(".hero-carousel__buttons").offset().top;
var l=0;
if(l=n.find(".hero-carousel__content>div:eq(-2)").offset().top<p){l=n.find(".hero-carousel__content>div:eq(-2)").offset().top
}else{l=n.find(".hero-carousel__content>div:eq(-3)").offset().top
}var q=$(this).height()/window.innerWidth*100;
var j=$(".main-navigation").height();
var o=Math.round(n.offset().top-j);
if(m!==null||m!==0){if(q>11){n.find(".hero-carousel__giveaway img").css({maxHeight:"67%"}),n.find(".hero-carousel__giveaway span").css({maxHeight:"10.91vw"})
}if(p||l){var k=Math.round(p-l);
var i=Math.round((k-120)/window.innerWidth*100)>81?81:Math.round((k-120)/window.innerWidth*100);
if($(window).width()>499){var s=Math.round((l-o+window.innerWidth/12)/window.innerWidth*100)
}else{var s=Math.round((l-o)/window.innerWidth*100)
}n.find(".hero-carousel__img").css({top:s+"vw",maxWidth:i+"%"})
}}})
}$(".hero-carousel__slide a,.hero-carousel__slide button").attr("tabindex","-1");
$(".hero-carousel__slide.swiper-slide-active a,.hero-carousel__slide.swiper-slide-active button").attr("tabindex","0")
});
if(window.innerWidth>991.98){var b=new Swiper(this.quickviewSlider,{loop:false,speed:1200,init:false,nested:true,parallax:true,lazy:{elementClass:"quickview-lazy",loadPrevNext:true},pagination:{el:".hero-quickview__slider .swiper-pagination",type:"bullets",clickable:true},on:{transitionStart:function(){$(f.quickviewSlider).find(".quickview-slide-animated").removeClass("quickview-slide-animated")
},transitionEnd:function(){$(f.quickviewSlider).find(".swiper-slide-active").addClass("quickview-slide-animated")
}}})
}$(document).on("click",f.openQuickviewBtn,function(){var h=$(this);
var g=h.parents(".hero-carousel__slide-wrap").find(".hero-quickview__slider");
h.closest(f.heroCarouselSlider).addClass(f.heroCarouselQuickviewVisibleClass);
h.closest(f.heroCarouselSlide).addClass(f.quickviewOpenedClass);
e.autoplay.stop();
if($(window).width()>991){e.allowTouchMove=false;
if(!g[0].swiper.$el.hasClass("swiper-initialized")){g[0].swiper.init()
}}else{g.find(".quickview-lazy").attr("src",function(){return $(this).attr("data-src")
})
}setTimeout(function(){h.closest(f.heroCarouselSlide).find(".hero-carousel__media").detach().appendTo(h.closest(f.heroCarouselSlide).find(".hero-quickview__media--full"));
$(f.quickviewSlider).find(".swiper-slide-active").addClass("quickview-slide-animated")
},1050);
var j="hero_carousel_"+$(".hero-carousel__slider").find(".swiper-slide-active").attr("data-slidename");
var i={event:"bannerQuickview",bannerName:j,bannerPosition:$(this).attr("data-position"),clickName:"banner click to quick view_"+j,clickType:"navigation"};
window.dataLayer.push(addATCommonFields(i));
event.stopPropagation()
});
$(document).on("click",f.closeQuickviewBtn,function(){if($(window).width()>991){e.allowTouchMove=true
}var g=$(this);
e.slideNext();
e.autoplay.start();
setTimeout(function(){$(f.quickviewSlider).find(".quickview-slide-animated").removeClass("quickview-slide-animated");
g.closest(f.heroCarouselSlider).removeClass(f.heroCarouselQuickviewVisibleClass);
g.closest(f.heroCarouselSlide).removeClass(f.quickviewOpenedClass)
},500);
setTimeout(function(){g.parents(".hero-carousel__slide-wrap").find(".hero-quickview__slider")[0].swiper.slideTo(0,0,false);
$(f.quickviewSlider).find(".quickview-slide-animated").removeClass("quickview-slide-animated");
g.closest(f.heroCarouselSlide).find(".hero-carousel__media").detach().insertAfter(g.closest(f.heroCarouselSlide).find(".hero-carousel__content"));
$(".hero-quickview__slider .swiper-wrapper").animate({scrollTop:0},100)
},800)
});
$(".hero-quickview__slider .swiper-wrapper").on("scroll touchmove",function(){if($(this).scrollTop()>50){$(f.quickviewSlider).find(".hero-quickview__scroll").addClass("hero-quickview__scroll--hidden")
}});
e.init();
f.pageLoaded=true;
$(f.heroCarouselSlider).find(".swiper-slide-active").addClass("swiper-slide-animated");
$(window).on("resize",function(){if($(window).width()>991){$(".hero-carousel__img").removeAttr("style");
$(".swiper-pagination-bullet-circle").removeAttr("style")
}e.update()
});
$(f.heroCarouselSlider).find(".swiper-pagination").on("mouseover",function(){e.autoplay.stop();
clearInterval(f.animateFirstCircle);
clearInterval(f.animateCircle)
});
$(f.heroCarouselSlider).find(".swiper-pagination").on("mouseleave",function(){if(!($(f.heroCarouselSlider).hasClass("hero-carousel__slider--quickview-visible"))){e.autoplay.start();
h01HeroProductCarousel.initHeroCarouselFirstCircle();
f.circleStop=false
}});
$(f.heroCarouselSlider).find(".swiper-pagination-bullet").on("click",function(){if(!($(f.heroCarouselSlider).hasClass("hero-carousel__slider--quickview-visible"))){f.circleStop=true
}})
},animateSlideProgress:function(e,d){var g=this;
var f=0;
var c=0;
if($(window).width()>991){f=d/g.circleOffset;
c=100/g.circleOffset;
var a=g.circleOffset;
g.animateCircle=setInterval(function(){a=a-c;
e.css("stroke-dashoffset",a+"px");
if(a<=0){clearInterval(g.animateCircle);
e.css("stroke-dashoffset",0+"px");
setTimeout(function(){$(g.heroCarouselSlider).find(".swiper-pagination-bullet").find(g.progressCircle).css("stroke-dashoffset",g.circleOffset+"px")
},50)
}},f)
}else{f=100;
c=100*f/d;
var b=c;
g.animateCircle=setInterval(function(){b=b+c;
e.css("width",b+"%");
if(b>=100){clearInterval(g.animateCircle);
e.css("width",100+"%");
setTimeout(function(){$(g.heroCarouselSlider).find(".swiper-pagination-bullet").find(g.progressLine).css("width",0+"%")
},50)
}},f)
}},quickviewSwatchSelection:function(){var a=this;
$(document).on("click",a.swatchBtn,function(){var j=$(this).index();
var d=$(this).closest(a.heroCarouselSlide);
var h=d.data("swiper-slide-index");
var m=d.find(a.swatchBtn);
var b=d.find(a.productImage);
var k=d.find("."+a.productImageActiveClass);
var i=d.find(a.flatImage);
var e=d.find("."+a.flatImageActiveClass);
var g=d.find(a.maskedImage);
var c=d.find("."+a.maskedImageActiveClass);
var f=d.find(a.quickviewBg);
var l=d.find("."+a.quickviewBgActiveClass);
if(!$(this).hasClass(a.swatchBtnSelectedClass)){m.removeClass(a.swatchBtnSelectedClass);
k.removeClass(a.productImageActiveClass);
e.removeClass(a.flatImageActiveClass);
c.removeClass(a.maskedImageActiveClass);
l.removeClass(a.quickviewBgActiveClass);
$(this).addClass(a.swatchBtnSelectedClass);
b.eq(j).addClass(a.productImageActiveClass);
i.eq(j).addClass(a.flatImageActiveClass);
g.eq(j).addClass(a.maskedImageActiveClass);
f.eq(j).addClass(a.quickviewBgActiveClass)
}d.siblings('.swiper-slide-duplicate[data-swiper-slide-index="'+h+'"]').find(a.swatchBtn).eq(j).click();
blackFontModel()
})
},bgInitDataSrc:function(){var a=$(".hero-carousel__slide-background");
a.each(function(){var e=$(this);
var b=e.attr("data-pc");
var d=e.attr("data-pad");
var c=e.attr("data-mob");
if($(window).width()<992){e.attr("data-background",c)
}else{if($(window).width()<1200&&$(window).width()>=992){e.attr("data-background",d)
}else{e.attr("data-background",b)
}}})
},videoInitDataSrc:function(){var a=$(".hero-carousel__video");
var b=$(".hero-carousel__video-img");
a.each(function(){var c=$(this);
if($(window).width()>1200){c.siblings(".hero-carousel__video-img").removeClass("swiper-lazy")
}else{c.removeClass("swiper-lazy")
}})
}};
function blackFontModel(){$(".hero-quickview__swatch--selected").each(function(){_this=$(this);
var a=_this.parents(".hero-quickview");
if(_this.hasClass("hero-quickview_black")){a.addClass("hero-quickview-active_black");
a.siblings(".hero-carousel__content").addClass("hero-title_black");
a.siblings(".hero-carousel__content").find(".hero-carousel__title-img").hide();
a.siblings(".hero-carousel__content").find(".hero-carousel__title-img-black").show()
}else{a.removeClass("hero-quickview-active_black");
a.siblings(".hero-carousel__content").removeClass("hero-title_black");
a.siblings(".hero-carousel__content").find(".hero-carousel__title-img").show();
a.siblings(".hero-carousel__content").find(".hero-carousel__title-img-black").hide()
}})
}function getRealIndex(b){var a=h01HeroProductCarousel.heroCarousel.activeIndex;
if(b=="left"){a=a+1
}else{if(b=="right"){a=a-1
}}var c=0;
if(a==h01HeroProductCarousel.heroCarousel.slidesGrid.length-1){c=1
}else{if(a==0){c=h01HeroProductCarousel.heroCarousel.slidesGrid.length-2
}else{c=a
}}console.log("realIndex:"+c);
return c
}function getLastIndex(a){var b=0;
if(a==1){b=h01HeroProductCarousel.heroCarousel.slidesGrid.length-2
}else{b=a-1
}return b
}function getNextIndex(b){var a=0;
if(b==h01HeroProductCarousel.heroCarousel.slidesGrid.length-2){a=1
}else{a=b+1
}return a
}$(function(){h01HeroProductCarousel.init();
$(".hero-carousel-prev").click(function(){var c=getRealIndex("left");
var a=$(".hero-carousel .swiper-wrapper").children().eq(c).attr("data-slidename");
var e=getLastIndex(c);
var b=$(".hero-carousel .swiper-wrapper").children().eq(e).attr("data-slidename");
var d={event:"bannerClick",nextBannerName:b,previousBannerName:a,buttonName:"left arrow",bannerPosition:c};
window.dataLayer.push(d)
});
$(".hero-carousel-next").click(function(){var d=getRealIndex("right");
var b=$(".hero-carousel .swiper-wrapper").children().eq(d).attr("data-slidename");
var a=getNextIndex(d);
var c=$(".hero-carousel .swiper-wrapper").children().eq(a).attr("data-slidename");
var e={event:"bannerClick",nextBannerName:c,previousBannerName:b,buttonName:"right arrow",bannerPosition:d};
window.dataLayer.push(e)
});
$(".v4.h01-hero-product-carousel .hero-carousel__slider").hover(function(a){if($(window).width()<991.98||$(".v4.h01-hero-product-carousel .hero-carousel__slider").hasClass("hero-carousel__slider--quickview-visible")){return
}if(a.type=="mouseleave"){$(".hero-carousel-prev").css("display","none");
$(".hero-carousel-next").css("display","none")
}});
$(".v4.h01-hero-product-carousel .hero-carousel__slider").mousemove(function(f){if($(window).width()<991.98||$(".v4.h01-hero-product-carousel .hero-carousel__slider").hasClass("hero-carousel__slider--quickview-visible")){return
}var c=$(this).width()*384/1920;
var d=$("html").attr("dir")=="rtl"?true:false;
var a=$(".hero-carousel-prev");
var b=$(".hero-carousel-next");
if(d){a=$(".hero-carousel-next");
b=$(".hero-carousel-prev")
}if(f.clientX<c){a.css("display","block").css("opacity","1").css("background","url('/etc/designs/huawei-cbg-site/clientlib-v3/images/to-left-image.svg') no-repeat center")
}else{a.css("display","none")
}if(f.clientX>$(this).width()-c){b.css("display","block").css("opacity","1").css("background","url('/etc/designs/huawei-cbg-site/clientlib-v3/images/to-right-image.svg') no-repeat center")
}else{b.css("display","none")
}});
blackFontModel();
$(".lazy").lazyload({placeholder:"data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"})
});
var p05ProductCarousel={$selector:$(".p05-product-carousel"),productSlider:".product-carousel__slider",productSlide:".product-carousel__product",slideAnimatedClass:"product-carousel__product--animated",slideHiddenClass:"product-carousel__product--hidden",categories:".product-carousel__categories",mainCategories:".product-carousel__categories--main",categoryList:".product-carousel__categories-list",categoryBtn:".product-carousel__category",categoryBtnActive:"product-carousel__category--active",swiperGaFlag:true,init:function(){var a=this;
if(this.$selector.length){this.initProductSlider()
}$(window).on("resize",function(){$(a.categoryList).removeAttr("style");
a.setCategoryOffsets();
a.slideCategoryTitles()
})
},initProductSlider:function(){var c=this;
var a="fade";
if($(window).width()<1200){a="slide"
}var b=new Swiper(this.productSlider,{loop:false,effect:a,speed:400,preventInteractionOnTransition:true,lazy:{loadPrevNext:true},navigation:{nextEl:".product-carousel__next",prevEl:".product-carousel__prev"},breakpoints:{1200:{simulateTouch:false,allowTouchMove:false}},on:{init:function(){$(c.productSlider).find(".swiper-slide-active").addClass(c.slideAnimatedClass);
$(".product-carousel__product a,.product-carousel__product button").attr("tabindex","-1");
$(".product-carousel__product.swiper-slide-active a,.product-carousel__product.swiper-slide-active button").attr("tabindex","0")
},slideChangeTransitionStart:function(){$(c.productSlider).find("."+c.slideAnimatedClass).addClass(c.slideHiddenClass);
setTimeout(function(){$(c.productSlider).find("."+c.slideHiddenClass).removeClass(c.slideHiddenClass);
$(c.productSlider).find(c.productSlide).removeClass(c.slideAnimatedClass)
},350)
},slideChangeTransitionEnd:function(){$(".product-carousel__product a,.product-carousel__product button").attr("tabindex","-1");
$(".product-carousel__product.swiper-slide-active a,.product-carousel__product.swiper-slide-active button").attr("tabindex","0");
setTimeout(function(){$(c.productSlider).find(".swiper-slide-active").addClass(c.slideAnimatedClass)
},100);
$(c.categories).each(function(){$(this).find("."+c.categoryBtnActive).removeClass(c.categoryBtnActive);
$(this).find(c.categoryBtn).eq(b.realIndex).addClass(c.categoryBtnActive)
});
c.slideCategoryTitles();
var d=$(".product-carousel__products").find(".product-carousel__product").eq(this.previousIndex).find(".product-carousel__img").attr("data-alt");
if($(window).width()<1200&&c.swiperGaFlag){var e={event:"bannerSwipe",nextBannerName:this.$wrapperEl.find(".swiper-slide-active").find(".product-carousel__img").attr("data-alt"),previousBannerName:d,bannerPosition:"product_carousel_"+(parseInt(this.activeIndex)+1),swipeDirection:this.previousIndex<this.activeIndex?"left":"right",clickName:"banner swipe "+(this.previousIndex<this.activeIndex?"left":"right")+" to "+(this.$wrapperEl.find(".swiper-slide-active").find(".product-carousel__img").attr("data-alt")),clickType:"action"};
window.dataLayer.push(addATCommonFields(e))
}c.swiperGaFlag=true
}}});
$(c.categoryBtn).on("click",function(){var e=$(".product-carousel__products").find(".swiper-slide-active").find(".product-carousel__img").attr("data-alt");
var d=$(this).index();
b.slideTo(d);
$(c.categories).each(function(){$(this).find("."+c.categoryBtnActive).removeClass(c.categoryBtnActive);
$(this).find(c.categoryBtn).eq(d).addClass(c.categoryBtnActive)
});
var f={event:"bannerClick",nextBannerName:$(".product-carousel__products").find(".swiper-slide-active").find(".product-carousel__img").attr("data-alt"),previousBannerName:e,buttonName:$(this).text().trim(),bannerPosition:"product_carousel_"+(parseInt(d)+1),clickName:"banner click "+($(this).text().trim())+" to "+($(".product-carousel__products").find(".swiper-slide-active").find(".product-carousel__img").attr("data-alt")),clickType:"action"};
window.dataLayer.push(addATCommonFields(f));
c.swiperGaFlag=false
});
$(".p05-product-carousel .product-carousel__arrow").on("click",function(){var f=$(this).index();
var e=$(".product-carousel__products").find(".product-carousel__product").index($(".product-carousel__products").find(".swiper-slide-active"));
var d=$(this).closest(".product-carousel__products").find(".swiper-slide-prev").find(".product-carousel__img").attr("data-alt");
var g=$(this).closest(".product-carousel__products").find(".swiper-slide-next").find(".product-carousel__img").attr("data-alt");
var h={event:"bannerClick",nextBannerName:$(this).closest(".product-carousel__products").find(".swiper-slide-active").find(".product-carousel__img").attr("data-alt"),previousBannerName:f==0?d:g,buttonName:f==0?"right arrow":"left arrow",bannerPosition:"product_carousel_"+(parseInt(e)+1),clickName:"banner click "+(f==0?"right arrow":"left arrow")+" to "+($(this).closest(".product-carousel__products").find(".swiper-slide-active").find(".product-carousel__img").attr("data-alt")),clickType:"action"};
window.dataLayer.push(addATCommonFields(h));
c.swiperGaFlag=false
});
$(window).on("load",function(){c.setCategoryOffsets();
c.slideCategoryTitles()
})
},setCategoryOffsets:function(){if($(window).width()<1200){var a=this;
$(this.mainCategories).find(a.categoryBtn).each(function(){var e=$(this);
var d=e.width();
var g=e.position().left;
var f=$(window).width();
var b=0;
if(e.index()>0){if($(window).width()<768){b=40
}else{b=46
}}var c=(f-(d+b))/2;
$(this).attr("data-offset",g);
$(this).attr("data-center",c)
})
}},slideCategoryTitles:function(){if($(window).width()<1200){var c=$(this.categories).find("."+this.categoryBtnActive);
var d=c.attr("data-offset");
var a=c.attr("data-center");
var b=d-a;
$(this.categoryList).each(function(){$(this).css("left",b*-1+"px")
})
}}};
$(function(){p05ProductCarousel.init()
});
var s02LastText={$serviceBanner:$(".service-banner__container"),init:function(){if(this.$serviceBanner.length){this.initLinkText();
this.initLastText()
}},initLastText:function(){$(".service-banner__link").each(function(){var e=$(this);
var a=e.text().trim();
var d=a.lastIndexOf(" ");
var b=a.substring(0,d);
var c=a.substring(d+1);
e.html(b+' <span class="service-icon-right">'+c+"</span>")
})
},initLinkText:function(){$(".service-banner__title").matchHeight({byRow:true})
}};
$(function(){s02LastText.init()
});
var h13SubBanner={init:function(){this.textMatchHeight();
this.initDataSrc()
},textMatchHeight:function(){if($(window).width()>=1200){$(".v4 .sub-banner__title").matchHeight();
$(".v4 .sub-banner__text").matchHeight()
}},initDataSrc:function(){$(".v4 .sub-banner__img").each(function(){var d=$(this);
var c=d.attr("data-pc");
var b=d.attr("data-pad");
var a=d.attr("data-mob");
if($(window).width()<992){d.attr("data-src",a)
}else{if($(window).width()<1200&&$(window).width()>=992){d.attr("data-src",b)
}else{d.attr("data-src",c)
}}})
}};
$(function(){h13SubBanner.init()
});