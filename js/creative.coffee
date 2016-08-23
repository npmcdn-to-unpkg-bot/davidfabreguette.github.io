---
---
(($) ->
  'use strict'

  # Start of use strict
  # jQuery for page scrolling feature - requires jQuery Easing plugin
  $('a.page-scroll').bind 'click', (event) ->
    $anchor = $(this)
    $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top - 75 }, 1250, 'easeInOutExpo'
    event.preventDefault()
    return
  # Highlight the top nav as scrolling occurs
  $('body').scrollspy
    target: '.navbar-fixed-top'
    offset: 51
  # Closes the Responsive Menu on Menu Item Click
  $('.navbar-collapse ul li a:not(.dropdown-toggle)').click ->
    $('.navbar-toggle:visible').click()
    return
  # Offset for Main Navigation
  $('#mainNav').affix offset: top: 100
  # Initialize and Configure Scroll Reveal Animation
  window.sr = ScrollReveal()
  sr.reveal '.sr-icons', {
    duration: 600
    scale: 0.3
    distance: '0px'
  }, 200
  sr.reveal '.sr-button',
    duration: 1000
    delay: 200
  sr.reveal '.sr-contact', {
    duration: 600
    scale: 0.3
    distance: '0px'
  }, 300
  # Initialize and Configure Magnific Popup Lightbox Plugin
  $('.popup-gallery').magnificPopup
    delegate: 'a'
    type: 'image'
    tLoading: 'Loading image #%curr%...'
    mainClass: 'mfp-img-mobile'
    gallery:
      enabled: true
      navigateByImgClick: true
      preload: [
        0
        1
      ]
    image: tError: '<a href="%url%">The image #%curr%</a> could not be loaded.'
  return
) jQuery
# End of use strict