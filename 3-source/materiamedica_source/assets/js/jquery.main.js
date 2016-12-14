function pageLoad() {
}

(function ($) {
    $(window).load(function () {
        $('#slider').nivoSlider({
            pauseOnHover: true,
            autoplaySpeed: 3000,
            speed: 1000,
            directionNav: true,
            animSpeed: 1500,
        });
        $('#sliderBanner').nivoSlider({
            pauseOnHover: true,
            autoplaySpeed: 4000,
            speed: 1000,
            directionNav: false,
            animSpeed: 1500,
        });
    });
    $(function () {
        myfunload();
        mypageload();});
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function myfunload() {
    
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("first");
    //$("#menu > li:has(ul li) > a").append('<span class="icon-down"></span>');
    jQuery('#menu').superfish({
        animation: { height: 'show' },
        delay: 200
    });
    $(".menu-level").menulevel({
        csscurrent: "active",
        cssicon: true,
        cssdown: "fa fa-caret-down",
        cssup: "fa fa-caret-up"
    });
    $(".menu-level li:last-child").addClass("last");
    $(".menu-level .active").find("ul:first").show();
    /******Start Show popup one times******/
    var pop = getCookie("pop");
    if (pop !== "0") {
        $('#myModal').linhnguyen($('#myModal').data());
        setCookie("pop", "0", 1);
    }
    var a, b = false,
                c = window.location.href;
    var newWindow = false;
    var singlePopup = false;
    function triggerEvent(el, type) {
        if ((el[type] || false) && typeof el[type] == 'function') {
            el[type](el);
        }
    }

    $(function () {
        $('a:not([href^=#])').on('click', function (e) {
            if (!$(this).hasClass('close-popup-modal') && !$(this).parent().hasClass('bx-pager-item') && !$(this).hasClass('link-slider')) {
                e.preventDefault();
                if (this.target == '_blank') {
                    newWindow = true;
                }
                else if ($(this).hasClass('iframe-project') || $(this).hasClass('iframe')) {
                    singlePopup = true;
                }
                c = this.href;
                b = true;
                triggerEvent(window, 'onbeforeunload');
            }
        });
    });
    window.onbeforeunload = function (e) {

        if (b) {
            if (newWindow) {
                var win = window.open(c, '_blank');
                win.focus();
                newWindow = false;
            }
            else if (singlePopup) {
                singlePopup = false;
            }
            else {
                window.location.href = c;
            }
            return;
        } else {
            console.log('close');
            setCookie("pop", "1", 1);
            //debugger;
        }
    }
    /******End Show popup one times*********/
    if ($('#productSlider').size() == 1) {
        var productSlider = $('#productSlider').imagesLoaded(function () {
            productSlider.owlCarousel({
                margin: 20,
                loop: true,
                autoplaySpeed: 3000,
                nav: true,
                autoplay: false,
                autoplayTimeout: 5000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    500: {
                        items: 2
                    },
                    1000: {
                        items: 3
                    },
                    1200: {
                        items: 4
                    },
                }
            });
        });
    }

    if ($('#back-to-top').length) {
        var scrollTrigger = 100, // px
            backToTop = function () {
                var scrollTop = $(window).scrollTop();
                if (scrollTop > scrollTrigger) {
                    $('#back-to-top').addClass('show');
                } else {
                    $('#back-to-top').removeClass('show');
                }
            };
        backToTop();
        $(window).on('scroll', function () {
            backToTop();
        });
        $('#back-to-top').on('click', function (e) {
            e.preventDefault();
            $('html,body').animate({
                scrollTop: 0
            }, 700);
        });
    }

    $('.carousel').carousel({
        interval: 6000,
    });
    $(window).load(function () {
        $('.carousel-inner .item').first().addClass('active');
        $('.carousel-indicators li').first().addClass('active');
        var n = $('.carousel-indicators li').length;
        for (var x = 0; x < n; x++) {
            $('.carousel-indicators li:nth-of-type(' + (x + 1) + ')').attr('data-slide-to', x);
        }
        // $('.carousel-inner .item').each(function(){
        // 	var array = [];
        // 	var c = $(this).attr('data-img');
        // 	var n = $('.carousel-indicators li').length;
        // 	debugger;
        //     for (var x = 0; x < n; x++) {
        //         $('.carousel-indicators li:nth-of-type(' + (x + 1) + ')').attr('data-slide-to', x);
        //         $('.carousel-indicators li:nth-of-type(' + (x + 1) + ')').css('background', c);
        //     }
        // });
        $('.carousel-inner .item').each(function () {
            var x = $(this).attr('id');
            var n = $(this).find('img');
            var m = n.attr('src');
            $(".carousel-indicators li[data-id ='" + x + "']").attr('data-img', m);
        });
        $('.carousel-indicators li').each(function () {
            var img = $(this).attr('data-img');
            $(this).css('background-image', 'url(' + img + ')');
        });
    });

    $(".link-show a").click(function () {
        $(this).toggleClass("current");
        var idboxs = $(this).attr("href");
        if ($(this).hasClass("current")) {
            $(idboxs).height("100%");
            var offset = $(this).offset();
            $("html, body").stop(true, true).animate({ scrollTop: (offset.top) }, 500);
        } else {
            $("html, body").stop(true, true).animate({ scrollTop:0}, 500, function () {
                $(idboxs).height(0);
            });
        }
        return false;
    });
    mymap();

}
/*=========================================================================*/
function mypageload() {
}

//==================
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
//$(window).ready(function () {
//    $('.nivoSlider .slide img').each(function () {
//        var title = $(this).attr('title');
//    });
//    $('.nivo-html-caption').each(function () {
//        var id = $(this).attr('id');
//    });
//    if (id = title) {

//    }
//});

$(window).load(function(){
    var array = []; // tạo 1 mảng array
    $('.news-main1').append('<ul class="ul-second"></ul>');
    var n = $('.ul-first li').length;
    if(n%2 == 1){
        var m = n / 2;
        var y = m + 0.5;
        for(var x = 0; x <= y; x++){
            //array.push($('.ul-first li:nth-of-type(' + x + ')')); push các item đọc được vào mảng array
            $('.ul-first li:nth-of-type(' + x + ')').appendTo('.ul-second');
        }
    }
    else if(n%2 == 0){
        var m = n / 2;
        var y = m;
        for(var x = 0; x <= y; x++){
            //array.push($('.ul-first li:nth-of-type(' + x + ')')); // push các item đọc được vào mảng array
            $('.ul-first li:nth-of-type(' + x + ')').appendTo('.ul-second');
        }
    }
    // var len = array.length; đếm số phần tử trong mảng
    // for (var i = 0; i < len; i++) {
    //    array[i].appendTo('.ul-second');
    // }

    
    
});