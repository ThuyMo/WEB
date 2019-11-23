

    $(document).ready(function()
    {
        "use strict";
    
        /* 
    
        1. Vars and Inits
    
        */
    
        var menuActive = false;
        var header = $('.header');
    
        setHeader();
    
        initCustomDropdown();
        initPageMenu();
    
        $(window).on('resize', function()
        {
            setHeader();
        });
    
        /* 
    
        2. Set Header
    
        */
    
        function setHeader()
        {
            //To pin main nav to the top of the page when it's reached
            //uncomment the following
    
            // var controller = new ScrollMagic.Controller(
            // {
            // 	globalSceneOptions:
            // 	{
            // 		triggerHook: 'onLeave'
            // 	}
            // });
    
            // var pin = new ScrollMagic.Scene(
            // {
            // 	triggerElement: '.main_nav'
            // })
            // .setPin('.main_nav').addTo(controller);
    
            if(window.innerWidth > 991 && menuActive)
            {
                closeMenu();
            }
        }
    
    
    
        function get_action(form) 
            {
                var v = grecaptcha.getResponse();
                if(v.length == 0)
                {
                    document.getElementById('captcha').innerHTML="You can't leave Captcha Code empty";
                    return false;
                }
                else
                {
                     document.getElementById('captcha').innerHTML="Captcha completed";
                    return true; 
                }
            }
    });