    <!doctype html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="GitFlic - первый российский сервис для хранения исходного кода и работы с ним. Основан на системе контроля версий Git. Регистрируйтесь. Бесплатное хранение кода и  репозиториев.">
            <meta name="_csrf" content="6b8e2c29-c0b4-42e9-8c28-36e47bfca613"/>
            <meta name="_csrf_header" content="X-CSRF-TOKEN"/>
            <title>Облачный сервис хранения репозиториев исходного кода GitFlic</title>

            <meta name="keywords"
                  content= " аналог гитхаба, аналоги github, gitlab аналоги, бесплатные репозитории, хранение кода, хранение двоичного кода, хранение данных в коде, системы хранения кода, облачный хранилище, облачное хранилище кода"

            <meta property="og:type" content="article">
            <meta property="og:title" content="Облачный сервис хранения репозиториев исходного кода GitFlic">
            <meta property="og:description" content="GitFlic - первый российский сервис для хранения исходного кода и работы с ним. Основан на системе контроля версий Git. Регистрируйтесь. Бесплатное хранение кода и  репозиториев.">
            <meta property="og:image" content="https://gitflic.ru/static/images/ogimage.png">
            <meta property="og:image:alt" content="GitFlic - первый российский сервис для хранения исходного кода и работы с ним. Основан на системе контроля версий Git. Регистрируйтесь. Бесплатное хранение кода и  репозиториев.">
            <meta property="og:url" content="https://gitflic.ru">


            <meta name="theme-color" content="#343a40">
            <link rel="apple-touch-icon" sizes="57x57" href="/static/image/favicon/apple-icon-57x57.png">
            <link rel="apple-touch-icon" sizes="60x60" href="/static/image/favicon/apple-icon-60x60.png">
            <link rel="apple-touch-icon" sizes="72x72" href="/static/image/favicon/apple-icon-72x72.png">
            <link rel="apple-touch-icon" sizes="76x76" href="/static/image/favicon/apple-icon-76x76.png">
            <link rel="apple-touch-icon" sizes="114x114" href="/static/image/favicon/apple-icon-114x114.png">
            <link rel="apple-touch-icon" sizes="120x120" href="/static/image/favicon/apple-icon-120x120.png">
            <link rel="apple-touch-icon" sizes="144x144" href="/static/image/favicon/apple-icon-144x144.png">
            <link rel="apple-touch-icon" sizes="152x152" href="/static/image/favicon/apple-icon-152x152.png">
            <link rel="apple-touch-icon" sizes="180x180" href="/static/image/favicon/apple-icon-180x180.png">
            <link rel="icon" type="image/png" sizes="192x192"  href="/static/image/favicon/android-icon-192x192.png">
            <link rel="icon" type="image/png" sizes="32x32" href="/static/image/favicon/favicon-32x32.png">
            <link rel="icon" type="image/png" sizes="96x96" href="/static/image/favicon/favicon-96x96.png">
            <link rel="icon" type="image/png" sizes="16x16" href="/static/image/favicon/favicon-16x16.png">
            <link rel="manifest" href="/static/image/favicon/manifest.json">
            <meta name="msapplication-TileColor" content="#ffffff">
            <meta name="msapplication-TileImage" content="/static/image/favicon/ms-icon-144x144.png">
            <base href="/">
            <link rel="stylesheet" href="/static/css/app.min.css?v=4.6.3&t=1768314685">
            <link type="image/x-icon" rel="shortcut icon" href="/static/image/favicon/favicon.ico">  
            <link rel="manifest" href="/static/image/favicon/manifest.json">

            <!-- Top.Mail.Ru counter -->
            <script type="text/javascript">
              var _tmr = window._tmr || (window._tmr = []);
              _tmr.push({id: "3607140", type: "pageView", start: (new Date()).getTime()});
              (function (d, w, id) {
                if (d.getElementById(id)) return;
                var ts = d.createElement("script"); ts.type = "text/javascript"; ts.async = true; ts.id = id;
                ts.src = "https://top-fwz1.mail.ru/js/code.js";
                var f = function () {var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ts, s);};
                if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); }
              })(document, window, "tmr-code");
            </script>
            <noscript><div><img src="https://top-fwz1.mail.ru/counter?id=3607140;js=na" style="position:absolute;left:-9999px;" alt="Top.Mail.Ru" /></div></noscript>
            <!-- /Top.Mail.Ru counter -->
        </head>
        <body class="is-loading">
    <header class="header --inverse">
        <div class="container">
            <div class="header__wrapper">
                <a href="/" class="header__logo">
                    <img src="/static/images/logo.svg" class="header__logo-white" alt="Gitflic logo" loading="lazy">
                    <img src="/static/images/logo-black.svg" class="header__logo-black" alt="Gitflic logo" loading="lazy">
                </a>
                <div class="header__menu">
                    <div class="header__menu-item">
                        <span>Решения</span>
                        <div class="header__menu-submenu">
                            <a href="/download/cloud">Облачная инфраструктура (SaaS)</a>
                            <a href="/download/onpremise">Собственный сервер (self-hosted)</a>
                        </div>
                    </div>
                    <div class="header__menu-item">
                        <a href="/docs/policy">Политика</a>
                    </div>
                    <div class="header__menu-item">
                        <a href="/price">Тарифы</a>
                    </div>
                    <!-- <div class="header__menu-item">
                        <a href="#">Скачать</a>
                    </div> -->
                    <div class="header__menu-item">
                        <a href="/contact">Контакты</a>
                    </div>
                </div>

                        <div class="header__account">
                            <a href="/auth/login" data-barba-prevent="self">
Войти                            </a>
                            <a class="button button--tertiary" href="/auth/signup/first-step" data-barba-prevent="self">
Регистрация                            </a>
                        </div>
                <div class="header__burger">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
    </header>
    <main data-barba="container" data-barba-namespace="home">
      <section class="hero">
        <div class="hero__blob"></div>
        <div class="container">
          <p>Первая Российская</p>
          <h1>Платформа для<br>работы <span>с кодом <span class="flicker-animation">_</span></span>
          </h1>
          <a href="/auth/login" class="button button--tertiary button-start">Начать работу</a>
          <a href="/public/project" class="button button--tertiary" target="_blank">Смотреть все
            проекты</a>
          <button class="button modal__open button--primary button-demo">Запросить демо</button>
        </div>
        <!-- <div id="hero__canvas" class="hero__canvas"></div> -->
        <div class="hero__images">
          <video width="100%" height="auto" poster="static/images/webp/capabilities/create.webp"
            autoplay muted loop playsinline>
            <source src="static/videos/create.mp4" type='video/mp4;'>
          </video>
          <picture>
            <source srcset="static/images/webp/capabilities/create2.webp" type="image/webp">
            <img src="static/images/capabilities/create2.png" alt="gitflic-create-bg">
          </picture>
          <picture>
            <source srcset="static/images/webp/capabilities/create3.webp" type="image/webp">
            <img src="static/images/capabilities/create3.png" alt="gitflic-create-bg-2">
          </picture>
        </div>
        <div class="capabilities__waves"></div>
      </section>
      <section class="capabilities">
        <div class="container">
          <h2>Возможности платформы</h2>
          <div class="capabilities__subtitle">Решение для хранения исходного кода и работы с ним.
            Объединяйтесь в команды или работайте в одиночку
          </div>
          <div class="capabilities__wrapper">
            <div class="capabilities__item">
              <div class="capabilities__item-blob"></div>
              <div class="capabilities__item-text">
                <picture>
                  <source srcset="static/images/webp/capabilities/icon-1.webp" type="image/webp">
                  <img src="static/images/capabilities/icon-1.png" alt="gitflic-icon">
                </picture>
                <h3>Создание</h3>
                <p>Используйте все возможности Git-инструмента. Создавайте, смотрите и управляйте
                  проектами с помощью системы контроля версий.</p>
                <p>Объединяйтесь в команды и компании, масштабируйте их и управляйте проектами на всех
                  этапах процесса разработки.</p>
              </div>
              <div class="capabilities__item-images">
                <picture>
                  <source srcset="static/images/webp/capabilities/create.webp" type="image/webp">
                  <img src="static/images/capabilities/create.png" alt="gitflic-create">
                </picture>
                <picture>
                  <source srcset="static/images/webp/capabilities/vs-code.webp" type="image/webp">
                  <img src="static/images/capabilities/vs-code.png" alt="gitflic-code">
                </picture>
              </div>
            </div>
            <div class="capabilities__item">
              <div class="capabilities__item-blob"></div>
              <div class="capabilities__item-text">
                <picture>
                  <source srcset="static/images/webp/capabilities/icon-2.webp" type="image/webp">
                  <img src="static/images/capabilities/icon-2.png" alt="gitflic-icon">
                </picture>
                <h3>Тестирование</h3>
                <p>Проводите автоматическое тестирование исходного кода.</p>
                <p>Настраивайте и запускайте необходимые кастомизированные тесты, условия или
                  вспомогательные действия с помощью технологии непрерывной интеграции (Continious
                  Integration).</p>
              </div>
              <div class="capabilities__item-images">
                <picture>
                  <source srcset="static/images/webp/capabilities/testing.webp" type="image/webp">
                  <img src="static/images/capabilities/testing.png" alt="gitflic-testing">
                </picture>
              </div>
            </div>
            <div class="capabilities__item">
              <div class="capabilities__item-blob"></div>
              <div class="capabilities__item-text">
                <picture>
                  <source srcset="static/images/webp/sast/sast-icon.webp" type="image/webp">
                  <img src="static/images/sast/sast-icon.png" alt="sast-icon">
                </picture>
                <h3 class="show-badge" data-badge="Новинка">Безопасность</h3>
                <h5>Анализ кода.</h5>
                <p>Улучшаете качество кода, применяйте статический анализатор для поиска ошибок
                  и выявления проблем безопасности на ранних этапах разработки.</p>
                <div class="capabilities__item-accent-card">
                  <div><b>SAST</b></div>
                  <div><b>DAST</b></div>
                  <div><b>SCA</b></div>
                </div>
              </div>
              <div class="capabilities__item-images">
                <picture>
                  <source srcset="static/images/webp/sast/sast-1.webp"
                    type="image/webp">
                  <img src="static/images/sast/sast-1.png"
                    alt="gitflic-screen-merge-reqest">
                </picture>
              </div>
            </div>
            <div class="capabilities__item">
              <div class="capabilities__item-blob"></div>
              <div class="capabilities__item-text">
                <picture>
                  <source srcset="static/images/webp/capabilities/icon-4.webp" type="image/webp">
                  <img src="static/images/capabilities/icon-4.png" alt="gitflic-icon">
                </picture>
                <h3>Выпуск</h3>
                <p>Автоматизируйте процесс сборки исходного кода.</p>
                <p>Проводите автоматическую сборку и подготовку релизов для дальнейшего развертывания
                  и интеграций с помощью технологии непрерывной доставки (Continious delivery).</p>
                <p>Быстрая и безопасная система доставки артефактов на сервер для оптимизации
                  процессов разработки и развертывания ПО.</p>
              </div>
              <div class="capabilities__item-images">
                <picture>
                  <source srcset="static/images/webp/capabilities/merge-reqest.webp"
                    type="image/webp">
                  <img src="static/images/capabilities/merge-reqest.png"
                    alt="gitflic-screen-merge-reqest">
                </picture>
                <picture>
                  <source srcset="static/images/webp/capabilities/job.webp" type="image/webp">
                  <img src="static/images/capabilities/job.png" alt="gitflic-screen-merge-reqest">
                </picture>
              </div>
            </div>
            <div class="capabilities__item">
              <div class="capabilities__item-blob"></div>
              <div class="capabilities__item-text">
                <picture>
                  <source srcset="static/images/webp/capabilities/icon-5.webp" type="image/webp">
                  <img src="static/images/capabilities/icon-5.png" alt="gitflic-icon">
                </picture>
                <h3>Контроль</h3>
                <p>Контролируйте процесс на всех этапах разработки для улучшения ключевых показателей.
                  Собирайте статистику, снижайте риски и проводите анализ пользовательского
                  опыта. </p>
                <p>Собирайте обратную связь при помощи инструмента “Проблемы”, чтобы улучшить свои
                  продукты.</p>
              </div>
              <div class="capabilities__item-images">
                <picture>
                  <source srcset="static/images/webp/capabilities/create-task.webp" type="image/webp">
                  <img src="static/images/capabilities/create-task.png" alt="gitflic-screen-tasks">
                </picture>
              </div>
            </div>
            <div class="capabilities__item">
              <div class="capabilities__item-blob"></div>
              <div class="capabilities__item-text">
                <picture>
                  <source srcset="static/images/webp/registry/registry-icon.webp"
                    type="image/webp">
                  <img src="static/images/registry/registry-icon.png"
                    alt="gitflic-icon">
                </picture>
                <h3 class="show-badge" data-badge="Новинка">Реестр пакетов</h3>
                <p>Cовместное использование пакетов ПО в качестве зависимостей в других
                  проектах.</p>
                <p>Cоздавайте как личные, так и общедоступные реестры
                  для различных менеджеров пакетов.</p>
                <div class="capabilities__item-accent-card">
                  <div>Docker</div>
                  <div>Maven</div>
                  <div>NPM</div>
                  <div>PyPi</div>
                  <div>Generic</div>
                  <div>NuGet</div>
                  <div>Composer</div>
                  <div>OneScript</div>
                  <div>CRAN</div>
                  <div>Deb</div>
                  <div>RPM</div>
                  <div>Go</div>
                  <div>Julia</div>
                </div>
              </div>
              <div class="capabilities__item-images">
                <picture>
                  <source srcset="static/images/webp/registry/registry-1.webp" type="image/webp">
                  <img src="static/images/registry/registry-1.png" alt="gitflic-registry">
                </picture>
                <picture>
                  <source srcset="static/images/webp/registry/registry-2.webp" type="image/webp">
                  <img src="static/images/registry/registry-2.png" alt="gitflic-registry">
                </picture>
              </div>
            </div>
          </div>
        </div>
        <div class="capabilities__waves"></div>
      </section>
      <section class="our-solutions">
        <div class="capabilities__waves"></div>
        <div class="container">
          <h2>Наши решения</h2>
          <div class="our-solutions__subtitle">Храните ваш код в нашем облачном сервисе или разверните
            систему на собственном сервере
          </div>
          <div class="our-solutions__wrapper">
            <div class="our-solutions__item">
              <div class="our-solutions__item-title">SaaS</div>
              <div class="our-solutions__item-desc">
                <p>Решение для облачного хранения исходного кода и работы с ним.</p>
                <p>Объединяйтесь в команды или работайте в одиночку в приватных или открытых
                  репозиториях.</p>
              </div>
              <div class="our-solutions__item-buttons">
                <a href="/auth/login" class="button button--secondary">Начать работу</a>
                <a href="/download/cloud" class="button button--tertiary">Подробнее</a>
              </div>
            </div>
            <div class="our-solutions__item">
              <div class="our-solutions__item-title">Self-hosted</div>
              <div class="our-solutions__item-desc">
                <p>Решение для установки GitFlic на собственный сервер.</p>
                <p>Используйте все инструменты сервиса локально, обеспечив полный контроль и
                  безопасность вашего контура.</p>
              </div>
              <div class="our-solutions__item-buttons">
                <a href="mailto:sales@gitflic.ru?subject=Запрос решения для установки на собственный сервер"
                  class="button button--secondary">Запросить</a>
                <a href="/download/onpremise" class="button button--tertiary">Подробнее</a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="cta">
        <div class="cta__bg"></div>
        <div class="container">
          <div class="cta__wrapper">
            <div class="cta__text">
              <h3>Перенеси все свои проекты<br>из GitLab в GitFlic с помощью инструмента для миграций
              </h3>
              <a href="mailto:sales@gitflic.ru?subject=Запрос на миграцию из GitLab"
                class="button button--secondary">Перенести проекты</a>
            </div>
            <div class="cta__image">
              <picture>
                <source srcset="static/images/webp/cta/figure.webp" type="image/webp">
                <img src="static/images/cta/figure.png" alt="gradient figure">
              </picture>
            </div>
          </div>
        </div>
      </section>
      <section class="our-clients">
        <div class="container">
          <h2>Наши клиенты</h2>
          <div class="our-clients__subtitle">Нашей платформе доверяют следующие компании:</div>
          <div class="our-clients__slider">
            <div class="swiper">
              <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                  <div class="our-clients__slider-item">
                    <picture>
                      <source srcset="static/images/webp/clients/ti-wo.webp" type="image/webp">
                      <img src="static/images/clients/ti-wo.png" alt="partner-igroprom">
                    </picture>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="our-clients__slider-item">
                    <picture>
                      <source srcset="static/images/webp/clients/dreamuch.webp" type="image/webp">
                      <img src="static/images/clients/dreamuch.png" alt="partner-dreamuch">
                    </picture>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="our-clients__slider-item">
                    <picture>
                      <source srcset="static/images/webp/clients/se.webp" type="image/webp">
                      <img src="static/images/clients/se.png" alt="system-electric">
                    </picture>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="our-clients__slider-item">
                    <picture>
                      <source srcset="static/images/webp/clients/visuals.webp" type="image/webp">
                      <img src="static/images/clients/visuals.png" alt="partner-visuals">
                    </picture>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="our-clients__slider-item">
                    <picture>
                      <source srcset="static/images/webp/clients/igroprom.webp" type="image/webp">
                      <img src="static/images/clients/igroprom.png" alt="partner-igroprom">
                    </picture>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="our-clients__slider-item">
                    <picture>
                      <source srcset="static/images/webp/clients/ai-da.webp" type="image/webp">
                      <img src="static/images/clients/ai-da.png" alt="partner-visuals">
                    </picture>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="our-clients__slider-item">
                    <picture>
                      <source srcset="static/images/webp/clients/apitree.webp" type="image/webp">
                      <img src="static/images/clients/apitree.png" alt="partner-visuals">
                    </picture>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="our-clients__slider-item">
                    <picture>
                      <source srcset="static/images/webp/clients/orientir.webp" type="image/webp">
                      <img src="static/images/clients/orientir.png" alt="partner-visuals">
                    </picture>
                  </div>
                </div>
              </div>
              <div class="swiper-pagination"></div>
              <div class="swiper-button-prev"></div>
              <div class="swiper-button-next"></div>
            </div>
          </div>
        </div>
      </section>
      <section class="contribution">
        <div class="capabilities__waves"></div>
        <div class="container">
          <div class="contribution__wrapper">
            <div class="contribution__wrapper-text">
              <h2>Внесите свой вклад в развитие OpenSource в России</h2>
              <p>Внесите свой вклад в развитие отечественных технологий и промышленности. В сервисе
                можно найти все передовые опенсурс разработки компаний.</p>
              <a href="https://gitflic.ru/public/project?sort=updated_at&direction=ASC" class="button button--primary" target="_blank">Посмотреть
                все проекты</a>
            </div>
            <div class="contribution__wrapper-tiles">
              <div class="contribution__wrapper-tiles-row">
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/static/image/avatar.jpg" alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">gitflic/gitflic</div>
                  <p>Представляем Вам GitFlic - первый сделанный в России сервис хранения исходного
                    кода.</p>
                </div>
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/static/image/avatar.jpg" alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">erthink/libmdbx</div>
                  <p>libmdbx is an extremely fast, compact, powerful, embedded, transactional
                    key-value database, with permissive license.</p>
                </div>
              </div>
              <div class="contribution__wrapper-tiles-row">
                <div class="contribution__wrapper-tile" onclick="location.href='https://gitflic.ru/company/rustore'">
                  <img src="https://gitflic.ru/static/images/partners/rustore-logo.png"
                    alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">Rustore</div>
                  <p>Официальный магазин приложений для Android</p>
                </div>
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/upload/img/a9771590-ad2c-441e-8729-7abe12349609.png"
                    alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">kill-real/supple-scheme-switcher</div>
                  <p>Универсальный переключатель светлой и темной темы в вэб-приложениях.</p>
                </div>
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/upload/img/41db4a01-fd4d-425b-87cc-918c44e07d86.jpg"
                    alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">rurewa/Altlinux</div>
                  <p>Всё для поддержки дистрибутива Atl Linux 10</p>
                </div>
              </div>
              <div class="contribution__wrapper-tiles-row">
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/static/image/avatar.jpg" alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">kovardin/flutter-yandex-ads</div>
                  <p>Yandex ADS for flutter applicaitions</p>
                </div>
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/upload/img/0e58c329-ed25-43ee-b557-a0e41955bf4f.jpg"
                    alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">fakelshub/sfall</div>
                  <p>Проект по переносу кода движка классической игры Fallout 2 в sfall.</p>
                </div>
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/upload/img/e3b40557-c190-4135-bfd9-7e77b06cb84f.png"
                    alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">iqstudio/iQMemo</div>
                  <p>Блокнот-редактор оперативных данных (рабочих заметок) для linux.</p>
                </div>
              </div>
              <div class="contribution__wrapper-tiles-row">
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/static/image/avatar.jpg" alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">metrology-cloud/Metrology-cloud</div>
                  <p>Portal Metrology</p>
                </div>
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/static/image/avatar.jpg" alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">sovietcitizen/ansible-role-mysql</div>
                  <p>This role is useful to install MySQL Server.</p>
                </div>
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/upload/img/7997c251-76d6-4fd2-bdc0-e472696e68e7.jpg"
                    alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">triune-fox/Majestic Arrival</div>
                  <p>Majestic Arrival</p>
                </div>
                <div class="contribution__wrapper-tile">
                  <img src="https://gitflic.ru/upload/img/00783620-1b97-4e6c-9856-a150c1ccf131.png"
                    alt="contributor-logo">
                  <div class="contribution__wrapper-tile-title">gembeider/Weather-Monitor</div>
                  <p>Монитор погоды на электронной бумаге</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <div class="to-top-button"></div>

    <footer class="footer">
        <div class="capabilities__waves"></div>
        <div class="container">
            <div class="footer__wrapper">
                <div class="footer__info">
                    <div class="footer__logo">
                        <img src="/static/images/logo.svg" alt="GitFlic logo">
                    </div>
                    <p>ООО "РеСолют"</p>
                    <p>ОГРН: 1217700127094</p>
                    <p><a href="https://new.fips.ru/registers-doc-view/fips_servlet?DB=EVM&DocNumber=2021667729&TypeFile=html" target="_blank">Патент №2021667729</a></p>
                    <p><a href="https://reestr.digital.gov.ru/reestr/1199098/" target="_blank">Запись в Реестре российского ПО <br> №15861 от 09.12.2022</a></p>
                    <p><a href="mailto:support@gitflic.ru"><i class="icon icon-mail"></i>support@gitflic.ru</a></p>
                </div>
                <div class="footer__menu">
                    <div class="footer__menu-col">
                        <h4>Сервис</h4>
                        <a href="https://docs.gitflic.ru">Документация</a>
                        <a href="/price">Тарифы</a>
                        <a href="https://gitflic.ru/public/project?sort=updated_at&direction=ASC" target="_blank">Хранилище кода</a>
                        <a href="/download/cloud">Облачная инфраструктура (SaaS)</a>
                        <a href="/download/onpremise">Собственный сервер (self-hosted)</a>
                    </div>
                    <div class="footer__menu-col">
                        <h4>Компания</h4>
                        <a href="/contact">Контакты</a>
                    </div>
                </div>
            </div>
            <div class="footer__sub">
                <span>Группа Астра, 2025</span>
                <a href="/docs/policy">Политика конфиденциальности</a>
                <a href="/docs/terms">Пользовательское соглашение</a>
                <a href="/docs/license">Лицензионное соглашение</a>
                <a href="/docs/policy-sh">Политика лицензирования self-hosted</a>
                <a href="/docs/license-sh">Лицензионное соглашение self-hosted</a>
            </div>
        </div>
    </footer>

      <div class="modal" id="modal">
        <div class="modal__wrapper demo-wrapper">
          <div class="modal__body">
            <div class="demo-content" id="form-demo" style="z-index: 999">
              <div class="content">
                <h3>Остались вопросы?</h3>
                <div class="content-link">
                  <p>Если хотите узнать больше о продукте, условиях сотрудничества, лицензиях или запланировать демонстрацию — напишите нам.</p>
                  <div class="link-block">
                    <a href="mailto:sales@gitflic.ru">sales@gitflic.ru</a>
                  </div>
                </div>
              </div>
              <div class="demo-image">
                <img src="static/images/capabilities/landing-demo-bear.png" alt="landing-demo-bear">
              </div>
            </div>
            <div id="loader" class="hidden loader__wrapper">
              <span class="loader"></span>
            </div>
            <div id="result" class="result__wrapper hidden">
            </div>
          </div>
          <div class="d-flex align-items-center modal__close">
            <div class="modal__close-icon"></div>
          </div>
        </div>
      </div>

      <script src="/static/js/swiper-bundle.js?v=2.5.2"></script>
      <script>
      var swiper = new Swiper('.swiper-container', {
        direction: 'horizontal',
        loop: true,
        autoplay: {
          delay: 5000,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
      </script>

                <script src="/static/js/app.min.js?v=4.6.3&t=1768314685"></script>

                <!-- Yandex.Metrika counter -->
                <script type="text/javascript" >
                  (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
                  m[i].l=1*new Date();
                  for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
                  k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
                  (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

                  ym(74493169, "init", {
                      clickmap:true,
                      trackLinks:true,
                      accurateTrackBounce:true,
                      webvisor:true
                  });
                </script>
                <noscript><div><img src="https://mc.yandex.ru/watch/74493169" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
                <!-- /Yandex.Metrika counter -->

        </body>
    </html>
