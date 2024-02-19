// hooms-N54 [dmLsPSbxQM]
(function() {
  $(function() {
    $(".hooms-N54").each(function() {
      const $block = $(this);
      const $dim = $block.find(".header-dim");
      // Header Scroll
      $(window).on("load scroll", function() {
        const $thisTop = $(this).scrollTop();
        if ($thisTop > 0) {
          $block.addClass("header-top-active");
        } else {
          $block.removeClass("header-top-active");
        }
      });
      // Gnb DecoLine
      $block.find(".header-gnbitem").each(function() {
        const $this = $(this);
        $this.on("mouseover", function() {
          $this.find(".header-gnblink").addClass("on");
        });
        $this.on("mouseout", function() {
          $this.find(".header-gnblink").removeClass("on");
        });
      });
      // Header SearchForm
      $block.find(".btn-search").on("click", function() {
        $block.addClass("header-search-active");
        $dim.fadeIn();
      });
      $block.find(".btn-close, .header-dim").on("click", function() {
        $block.removeClass("header-search-active");
        $dim.fadeOut();
      });
      // Full Gnb
      $block.find(".btn-menu").on("click", function() {
        $block.find(".header-fullmenu-dark").addClass("fullmenu-active");
        $block.find(".header-fullmenu-dark .fullmenu-gnbitem .fullmenu-img").show();
      });
      $block.find(".fullmenu-close").on("click", function() {
        $block.find(".header-fullmenu-dark").removeClass("fullmenu-active");
      });
      // Full Gnb Hover
      $block.find(".fullmenu-gnbitem").each(function() {
        const $this = $(this);
        const thisIndex = $this.index();
        $this.find(".fullmenu-gnblink").on("mouseover", function() {
          $block.find(".fullmenu-gnbitem").removeClass("fullmenu-item-active");
          $this.addClass("fullmenu-item-active");
          // Full Gnb Background Img
          const $headerFullmenu = $block.find(".header-fullmenu-dark");
          const classesToRemove = $headerFullmenu.attr("class").split(" ").filter(function(fuillmenu) {
            return fuillmenu.startsWith("header-fullmenu-bg");
          });
          $headerFullmenu.removeClass(classesToRemove.join(" "));
          $headerFullmenu.addClass("header-fullmenu-bg" + thisIndex);
        });
      });
      // Header Mobile 1Depth Click
      if (window.innerWidth <= 992) {
        $(".fullmenu-gnbitem").each(function() {
          const $sublist = $(this).find(".fullmenu-sublist");
          if ($sublist.length) {
            $(this).find(".fullmenu-gnblink").attr("href", "javascript:void(0);");
          }
        });
      }
    });
  });
})();
// hooms-N1 [CjLSPSbxwX]
(function() {
  $(function() {
    $(".hooms-N1").each(function() {
      const $block = $(this);
      // Swiper
      const swiper = new Swiper(".hooms-N1 .contents-swiper", {
        slidesPerView: 1,
        spaceBetween: 0,
        allowTouchMove: false,
        loop: true,
        autoplay: {
          delay: 5000,
        },
        pagination: {
          el: ".hooms-N1 .swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".hooms-N1 .swiper-button-next",
          prevEl: ".hooms-N1 .swiper-button-prev",
        },
      });
      // Swiper Play, Pause Button
      const pauseButton = $block.find('.swiper-button-pause');
      const playButton = $block.find('.swiper-button-play');
      playButton.hide();
      pauseButton.show();
      pauseButton.on('click', function() {
        swiper.autoplay.stop();
        playButton.show();
        pauseButton.hide();
      });
      playButton.on('click', function() {
        swiper.autoplay.start();
        playButton.hide();
        pauseButton.show();
      });
    });
  });
})();
// hooms-N7 [YElSpsBYw0]
(function() {
  $(function() {
    $(".hooms-N7").each(function() {
      const $block = $(this);
      // Swiper
      const swiper = new Swiper(".hooms-N7 .contents-swiper", {
        slidesPerView: 'auto',
        allowTouchMove: false,
        loop: true,
        pagination: {
          type: "progressbar",
          el: ".hooms-N7 .swiper-pagination",
          clickable: true,
        },
        autoplay: {
          delay: 2500,
        },
        on: {
          slideChange: function() {
            $block.find('.contents-slide').removeClass('contents-price-active');
            const activeIndex = this.activeIndex % this.slides.length;
            $block.find('.contents-slide').eq(activeIndex).addClass('contents-price-active');
          }
        }
      });
    });
  });
})();;
// hooms-N45 [erLSpsQm8g]
(function() {
  $(function() {
    $(".hooms-order-N1").each(function() {
      const $block = $(this);
      // order Textarea Count
      $block.find("textarea").on("keyup", function() {
        var orderText = $(this).val();
        if (orderText.length == 0 || orderText == "") {
          $block.find(".order-text-count").text("0자");
        } else {
          $block.find(".order-text-count").text(orderText.length);
        }
        if (orderText.length > 4000) {
          $(this).val($(this).val().substring(0, 4000));
        }
      });
      // order File Cancel Button
      $block.find('.order-form-file').each(function() {
        const $this = $(this);
        $this.find('.fileset-input').on('change', function() {
          $(this).siblings('.fileset-btn-cancel').show();
        });
        $this.find('.fileset-btn-cancel').on('click', function() {
          $(this).siblings('.fileset-input').val('');
          $(this).hide();
        });
      });
    });
  });
})();;
// hooms-N39 [hkLSPT0B60]
(function() {
  $(function() {
    $(".hooms-N39").each(function() {
      const $block = $(this);
      // modalSet
      modalSet(".modalset-dim", "#modalSet1", "#modalSet2");

      function modalSet(dim, modalSet1, modalSet2) {
        // Modal Show
        $block.find('.modalset-btn').on('click', function() {
          $block.find(modalSet1).addClass('modalset-active');
          $block.find(dim).fadeIn();
        });
        // Modal Hide
        $block.find('.modalset-dim, .modal-close').on('click', function() {
          $block.find(modalSet1).removeClass('modalset-active');
          $block.find(modalSet2).removeClass('modalset-active');
          $block.find(dim).fadeOut();
        });
        $block.find(modalSet1).find('.btnset-confirm').on('click', function() {
          $block.find(modalSet1).removeClass('modalset-active');
          $block.find(modalSet2).addClass('modalset-active');
        });
        // Modal2 Show
        $block.find(modalSet2).find('.btnset-confirm').on('click', function() {
          $block.find(modalSet2).removeClass('modalset-active');
          $block.find(dim).fadeOut();
        });
      };
    });
  });
})();;
// hooms-N27 [xMlspTfPMr]
(function() {
  $(function() {
    $(".hooms-N27").each(function() {
      const $block = $(this);
      // 초기 슬라이드 인덱스 설정
      const initialSlide = 4 - 1; // 탈모 단계 숫자 받아오기~~
      // Swiper
      const swiper = new Swiper(".hooms-N27 .contents-swiper", {
        slidesPerView: 'auto',
        centeredSlides: true,
        loop: true,
        initialSlide: initialSlide,
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        pagination: {
          type: "progressbar",
          el: ".hooms-N27 .swiper-pagination",
          clickable: true,
        },
        on: {
          slideChange: function() {
            $block.find('.contents-slide').removeClass('contents-price-active');
            const activeIndex = this.activeIndex % this.slides.length;
            $block.find('.contents-slide').eq(activeIndex).addClass('contents-price-active');
          }
        }
      });
    });
  });
})();