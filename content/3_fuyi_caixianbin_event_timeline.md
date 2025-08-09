+++
title = "举报附一蔡*彬事件时间线"
date = 2025-08-06T00:00:00+00:00
description = "转载自公众号【ling波微步】的“举报事件时间线”，记录了实名指控汕头大学医学院导师蔡*彬，涉及临床违规、多篇论文学术造假、滥用职权压榨学生等严重问题的详细时间线。"
authors = ["ling波微步"]
[taxonomies]
categories = ["发声"]
+++


> 有那么一种先生，一边教你“医者仁心”，一边却把未经检验的菌液注入病人体内；一边指导你“学术诚信”，一边却把你的心血调换给旁人，做自己的晋升阶梯。你若不从，便成了“心理有病”；你若呐喊，便是“损害声誉”。
> 
> 这沉默的螺旋，仿佛一间铁屋子，令人窒息。但如今，终究有了一个撕心裂肺的，敢于冲撞的。这里记录的，便是这冲撞的回响。但愿这回响，能惊醒几个装睡的人。
> 
> ---
> 
> [PDF 原文](/fuyi_caixianbin_event_timeline/20250806举报事件的时间线.pdf)
>

<style>
.slide-container {
  /* 幻灯片容器 */
}
.slide {
  position: relative; /* 修改：为页码提供定位上下文 */
  border: 1px solid #ccc;
  box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  background-color: #fff;
  border-radius: 4px;
  min-height: 70vh;
  width: 100%;
  margin: 0.5rem auto;
  padding: 2rem;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.slide .title-group {
    width: 100%;
    max-width: 80%;
}

.slide .title-group p {
    text-align: right;
    max-width: 100%;
}

.slide h2 {
    font-size: 2em;
    margin-bottom: 0.5rem;
}

.slide p {
    font-size: 1em;
    line-height: 1.6;
    max-width: 80%;
}

.slide-full-image {
    padding: 0;
    min-height: auto;
    overflow: hidden;
}

.slide-full-image img {
    width: 100%;
    display: block;
}

/* 新增：页码样式 */
.slide-page-number {
    position: absolute;
    bottom: 5px;
    right: 8px;
    background-color: rgba(0, 0, 0, 0.6);
    color: white;
    padding: 5px 12px;
    border-radius: 12px;
    font-size: 10px;
    font-weight: bold;
    z-index: 10;
    pointer-events: none;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
}
</style>

<button id="fullscreen-btn" style="position: fixed; bottom: 20px; right: 20px; z-index: 1000; padding: 10px 15px; background-color: rgba(0, 0, 0, 0.5); color: white; border: none; border-radius: 5px; cursor: pointer; font-size: 16px;">
  全屏观看
</button>

<!-- JavaScript 将在此处动态生成幻灯片 -->
<div class="slide-container"></div>


> ---

 <div style="text-align: center;">
  <div style="display: inline-block; margin: 10px; vertical-align: top;">
    <img src="/fuyi_caixianbin_event_timeline/origin_post.svg" alt="原文二维码" style="width: 180px; height: 180px; border: 1px solid #ddd; padding: 5px; box-sizing: border-box; display: block; margin: 0 auto;">
    <p style="font-size: 14px; color: #555; margin-top: 8px;">扫码查看公众号推文</p>
  </div>
  <div style="display: inline-block; margin: 10px; vertical-align: top;">
    <img src="/fuyi_caixianbin_event_timeline/article.svg" alt="本文二维码" style="width: 180px; height: 180px; border: 1px solid #ddd; padding: 5px; box-sizing: border-box; display: block; margin: 0 auto;">
    <p style="font-size: 14px; color: #555; margin-top: 8px;">扫码手机阅读本文</p>
  </div>
</div>

> ---

<script>
document.addEventListener('DOMContentLoaded', function() {
    // --- 1. 动态构建幻灯片列表 ---
    const slideContainer = document.querySelector('.slide-container');
    if (slideContainer) {
        const numberOfSlides = 62;
        const basePath = '/fuyi_caixianbin_event_timeline/';

        for (let i = 1; i <= numberOfSlides; i++) {
            const slideDiv = document.createElement('div');
            slideDiv.className = 'slide slide-full-image';

            const img = document.createElement('img');
            img.dataset.src = `${basePath}image_${i}.webp`;
            img.className = 'lazy-loadable';
            img.loading = 'lazy';
            img.decoding = 'async';

            // 创建页码元素
            const pageNumber = document.createElement('div');
            pageNumber.className = 'slide-page-number';
            pageNumber.textContent = `${i} / ${numberOfSlides}`;

            slideDiv.appendChild(img);
            slideDiv.appendChild(pageNumber); // 将页码添加到幻灯片中
            slideContainer.appendChild(slideDiv);
        }
    }
    
    // --- 2. 使用 Intersection Observer 实现精确懒加载 ---
    const lazyImages = document.querySelectorAll('.lazy-loadable');
    if ('IntersectionObserver' in window) {
        const imageObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const image = entry.target;
                    image.src = image.dataset.src;
                    image.classList.remove('lazy-loadable');
                    observer.unobserve(image);
                }
            });
        });
        lazyImages.forEach(image => {
            imageObserver.observe(image);
        });
    } else {
        lazyImages.forEach(image => {
            image.src = image.dataset.src;
        });
    }

    // --- 3. 全屏按钮功能 ---
    const btn = document.getElementById('fullscreen-btn');
    if (!btn) return;

    const elem = document.documentElement;
    const fullscreenEnabled = document.fullscreenEnabled || document.webkitFullscreenEnabled || document.mozFullScreenEnabled || document.msFullscreenEnabled;
    const orientationApiSupported = 'orientation' in screen && 'lock' in screen.orientation;

    if (!fullscreenEnabled) {
        btn.style.display = 'none';
        return;
    }
    const isFullscreen = () => document.fullscreenElement || document.webkitFullscreenElement || document.mozFullScreenElement || document.msFullscreenElement;

    function toggleFullScreenAndOrientation() {
        if (!isFullscreen()) {
            if (elem.requestFullscreen) { elem.requestFullscreen(); } 
            else if (elem.webkitRequestFullscreen) { elem.webkitRequestFullscreen(); }
            else if (elem.mozRequestFullScreen) { elem.mozRequestFullScreen(); }
            else if (elem.msRequestFullscreen) { elem.msRequestFullscreen(); }
        } else {
            if (document.exitFullscreen) { document.exitFullscreen(); } 
            else if (document.webkitExitFullscreen) { document.webkitExitFullscreen(); }
            else if (document.mozCancelFullScreen) { document.mozCancelFullScreen(); } 
            else if (document.msExitFullscreen) { document.msExitFullscreen(); }
        }
    }
    btn.addEventListener('click', toggleFullScreenAndOrientation);

    document.addEventListener('fullscreenchange', handleFullScreenChange);
    document.addEventListener('webkitfullscreenchange', handleFullScreenChange);
    document.addEventListener('mozfullscreenchange', handleFullScreenChange);
    document.addEventListener('MSFullscreenChange', handleFullScreenChange);

    function handleFullScreenChange() {
        if (isFullscreen()) {
            btn.textContent = '退出全屏';
            if (orientationApiSupported) {
                screen.orientation.lock('landscape').catch(error => console.warn('Screen orientation lock failed:', error));
            }
        } else {
            btn.textContent = '全屏观看';
            if (orientationApiSupported) {
                screen.orientation.unlock();
            }
        }
    }
});
</script>