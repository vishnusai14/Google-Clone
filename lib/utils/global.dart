import 'package:flutter/material.dart';

final List<String> lang = [
  "বাংলা",
  "తెలుగు",
  "मराठी",
  "தமிழ்",
  "ગુજરાતી",
  "ಕನ್ನಡ",
  "മലയാളം",
  "ਪੰਜਾਬੀ"
];

final Map<String, IconData> drawerList = {
  "Home": Icons.home,
  "Search History": Icons.history,
  "Settings": Icons.settings,
  "Safe Search": Icons.health_and_safety,
  "Help": Icons.help
};

final Map<String, String> popupData = {
  "Calendar": "assets/images/gcalendar.png",
  "Room": "assets/images/gclassroom.png",
  "Docs": "assets/images/gdocs.png",
  "Meet": "assets/images/gmeet.png",
  "News": "assets/images/gnews.png",
  "Notes": "assets/images/gnotes.png",
  "Photos": "assets/images/gphotos.png",
  "YouTube": "assets/images/Youtube.jpg",
  "Chat": "assets/images/gchat.png",
  "Maps": "assets/images/gmaps.png",
  "Shopping": "assets/images/gshop.jpg",
  "Translate": "assets/images/gtranslate.png",
};

final List<String> cards = [
  "All",
  "Images",
  "Videos",
  "Maps",
  "Shopping",
  "News",
  "Documents",
  "Othes"
];

final List dummyData = [
  {
    "kind": "customsearch#result",
    "title": "Log into Facebook | Facebook",
    "htmlTitle":
        "Log into \u003cb\u003eFacebook\u003c/b\u003e | \u003cb\u003eFacebook\u003c/b\u003e",
    "link": "https://www.facebook.com/login/",
    "displayLink": "www.facebook.com",
    "snippet":
        "Log into Facebook to start sharing and connecting with your friends, family, and people you know.",
    "htmlSnippet":
        "Log into \u003cb\u003eFacebook\u003c/b\u003e to start sharing and connecting with your friends, family, and people you know.",
    "cacheId": "ZdBb6JfKRcUJ",
    "formattedUrl": "https://www.facebook.com/login/",
    "htmlFormattedUrl":
        "https://www.\u003cb\u003efacebook\u003c/b\u003e.com/login/",
    "pagemap": {
      "cse_thumbnail": [
        {
          "src":
              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQVqBKeMt4bWXS8gadZAnJjPC5KLHheTxjWqCi-x_JHZtLY8BYE8NvAQKI",
          "width": "225",
          "height": "225"
        }
      ],
      "metatags": [
        {
          "referrer": "origin-when-crossorigin",
          "og:image": "https://www.facebook.com/images/fb_icon_325x325.png",
          "theme-color": "#3b5998",
          "og:type": "website",
          "og:site_name": "Facebook",
          "viewport": "user-scalable=no,initial-scale=1,maximum-scale=1",
          "og:title": "Log into Facebook | Facebook",
          "og:url": "https://www.facebook.com/",
          "og:description":
              "Log into Facebook to start sharing and connecting with your friends, family, and people you know."
        }
      ],
      "cse_image": [
        {"src": "https://www.facebook.com/images/fb_icon_325x325.png"}
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "Meta for Developers",
    "htmlTitle": "Meta for Developers",
    "link": "https://developers.facebook.com/",
    "displayLink": "developers.facebook.com",
    "snippet":
        "Code to connect people with Facebook for Developers. Explore AI, business tools, gaming, open source, publishing, social hardware, social integration, ...",
    "htmlSnippet":
        "Code to connect people with \u003cb\u003eFacebook\u003c/b\u003e for Developers. Explore AI, business tools, gaming, open source, publishing, social hardware, social integration,&nbsp;...",
    "cacheId": "YqT11RPkXrkJ",
    "formattedUrl": "https://developers.facebook.com/",
    "htmlFormattedUrl":
        "https://developers.\u003cb\u003efacebook\u003c/b\u003e.com/",
    "pagemap": {
      "metatags": [
        {
          "referrer": "origin-when-crossorigin",
          "og:image":
              "https://scontent-lax3-1.xx.fbcdn.net/v/t39.2365-6/96406897_653650008814540_3069312070718586880_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=ad8a9d&_nc_ohc=-kOEGIYnbo8AX9D_Vuq&_nc_ht=scontent-lax3-1.xx&oh=00_AfBIZ5L4GNX8DQX9fJo7n043DtfVjETLBcQeyiJfiJmiuw&oe=6511ED69",
          "fb:app_id": "113869198637480",
          "og:type": "website",
          "twitter:card": "summary",
          "og:site_name": "Meta for Developers",
          "twitter:site:id": "63359297",
          "viewport": "width=device-width, initial-scale=1",
          "og:title": "Meta for Developers",
          "og:locale": "en_US",
          "og:url": "https://developers.facebook.com/",
          "og:description":
              "Code to connect people with Facebook for Developers. Explore AI, business tools, gaming, open source, publishing, social hardware, social integration, and virtual reality. Learn about Facebook’s global programs to educate and connect developers."
        }
      ],
      "cse_image": [
        {
          "src":
              "https://scontent-lax3-1.xx.fbcdn.net/v/t39.2365-6/96406897_653650008814540_3069312070718586880_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=ad8a9d&_nc_ohc=-kOEGIYnbo8AX9D_Vuq&_nc_ht=scontent-lax3-1.xx&oh=00_AfBIZ5L4GNX8DQX9fJo7n043DtfVjETLBcQeyiJfiJmiuw&oe=6511ED69"
        }
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "Facebook - log in or sign up",
    "htmlTitle": "\u003cb\u003eFacebook\u003c/b\u003e - log in or sign up",
    "link": "https://www.facebook.com/",
    "displayLink": "www.facebook.com",
    "snippet":
        "Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.",
    "htmlSnippet":
        "Create an account or log into \u003cb\u003eFacebook\u003c/b\u003e. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.",
    "cacheId": "QanOc4elti0J",
    "formattedUrl": "https://www.facebook.com/",
    "htmlFormattedUrl": "https://www.\u003cb\u003efacebook\u003c/b\u003e.com/",
    "pagemap": {
      "cse_thumbnail": [
        {
          "src":
              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQVqBKeMt4bWXS8gadZAnJjPC5KLHheTxjWqCi-x_JHZtLY8BYE8NvAQKI",
          "width": "225",
          "height": "225"
        }
      ],
      "metatags": [
        {
          "referrer": "origin-when-crossorigin",
          "og:image": "https://www.facebook.com/images/fb_icon_325x325.png",
          "theme-color": "#3b5998",
          "og:type": "website",
          "og:site_name": "Facebook",
          "viewport": "user-scalable=no,initial-scale=1,maximum-scale=1",
          "og:title": "Facebook - log in or sign up",
          "og:url": "https://www.facebook.com/",
          "og:description":
              "Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates."
        }
      ],
      "cse_image": [
        {"src": "https://www.facebook.com/images/fb_icon_325x325.png"}
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "Facebook Business Manager",
    "htmlTitle": "\u003cb\u003eFacebook\u003c/b\u003e Business Manager",
    "link": "https://business.facebook.com/",
    "displayLink": "business.facebook.com",
    "snippet":
        "With Meta Business Suite and Business Manager, you can create ads and manage your accounts in one place. Login and be directed to the right Facebook tool...",
    "htmlSnippet":
        "With Meta Business Suite and Business Manager, you can create ads and manage your accounts in one place. Login and be directed to the right \u003cb\u003eFacebook\u003c/b\u003e tool...",
    "cacheId": "eAlXY7kEaiUJ",
    "formattedUrl": "https://business.facebook.com/",
    "htmlFormattedUrl":
        "https://business.\u003cb\u003efacebook\u003c/b\u003e.com/",
    "pagemap": {
      "metatags": [
        {
          "referrer": "origin-when-crossorigin",
          "fb4b_pixel_events": "ViewContent",
          "og:image":
              "https://scontent-ord5-2.xx.fbcdn.net/v/t39.8562-6/104621072_650351285551930_5671839628686440004_n.jpg?stp=dst-webp&_nc_cat=110&ccb=1-7&_nc_sid=7a0af4&_nc_ohc=9lpDG6N8hSMAX8pynr_&_nc_ht=scontent-ord5-2.xx&oh=00_AfDTkdMK4XtQIg-rX5WQXT59fLIDT-zI-qxxhkUFiD7rXQ&oe=64FD6E59",
          "viewport": "width=device-width, initial-scale=1",
          "fb4b_version": "v3",
          "og:title":
              "Login and Access Meta Business Suite and Business Manager",
          "og:description":
              "With Meta Business Suite and Business Manager, you can create ads and manage your accounts in one place. Login and be directed to the right Facebook tool for you."
        }
      ],
      "cse_image": [
        {
          "src":
              "https://scontent-ord5-2.xx.fbcdn.net/v/t39.8562-6/104621072_650351285551930_5671839628686440004_n.jpg?stp=dst-webp&_nc_cat=110&ccb=1-7&_nc_sid=7a0af4&_nc_ohc=9lpDG6N8hSMAX8pynr_&_nc_ht=scontent-ord5-2.xx&oh=00_AfDTkdMK4XtQIg-rX5WQXT59fLIDT-zI-qxxhkUFiD7rXQ&oe=64FD6E59"
        }
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "Facebook Marketplace: Buy and Sell Items Locally or Shipped ...",
    "htmlTitle":
        "\u003cb\u003eFacebook\u003c/b\u003e Marketplace: Buy and Sell Items Locally or Shipped ...",
    "link": "https://www.facebook.com/marketplace/",
    "displayLink": "www.facebook.com",
    "snippet":
        "Buy or sell new and used items easily on Facebook Marketplace, locally or from businesses. Find great deals on new items shipped from stores to your door.",
    "htmlSnippet":
        "Buy or sell new and used items easily on \u003cb\u003eFacebook\u003c/b\u003e Marketplace, locally or from businesses. Find great deals on new items shipped from stores to your door.",
    "cacheId": "g8uWespMFqoJ",
    "formattedUrl": "https://www.facebook.com/marketplace/",
    "htmlFormattedUrl":
        "https://www.\u003cb\u003efacebook\u003c/b\u003e.com/marketplace/",
    "pagemap": {
      "cse_thumbnail": [
        {
          "src":
              "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQyfGL7LQs1wHMeQqPFi3tkP8EAslqfQsCiZ9BOnPMfQicaXAJS6IfKkXBn",
          "width": "259",
          "height": "194"
        }
      ],
      "metatags": [
        {
          "application-name": "Facebook Marketplace",
          "dc.publisher": "Facebook Marketplace",
          "apple-itunes-app":
              "app-id=284882215, app-argument=fb://marketplace_home/",
          "twitter:card": "summary",
          "twitter:title": "Marketplace",
          "dc.description":
              "Buy or sell new and used items easily on Facebook Marketplace, locally or from businesses. Find great deals on new items shipped from stores to your door.",
          "al:ios:app_name": "Facebook",
          "application-url": "https://www.facebook.com/marketplace/",
          "msvalidate.01": "6A9FD2A64183DB2BC733F8ADDEC78CE0",
          "og:title": "Marketplace",
          "al:android:package": "com.facebook.katana",
          "al:ios:url": "fb://marketplace_home/",
          "og:description":
              "Buy or sell new and used items easily on Facebook Marketplace, locally or from businesses. Find great deals on new items shipped from stores to your door.",
          "al:ios:app_store_id": "284882215",
          "al:android:url": "fb://marketplace_home/",
          "twitter:site": "@Facebook",
          "viewport": "user-scalable=no,initial-scale=1,maximum-scale=1",
          "twitter:description":
              "Buy or sell new and used items easily on Facebook Marketplace, locally or from businesses. Find great deals on new items shipped from stores to your door.",
          "og:locale": "en_US",
          "dc.title": "Marketplace",
          "og:url": "https://www.facebook.com/marketplace/",
          "al:android:app_name": "Facebook"
        }
      ],
      "cse_image": [
        {
          "src":
              "https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=9919393868131072"
        }
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "Messenger",
    "htmlTitle": "Messenger",
    "link": "https://www.messenger.com/",
    "displayLink": "www.messenger.com",
    "snippet":
        "Facebook. Messenger · Features · Desktop App · Privacy & Safety · For Developers. Hang out anytime, anywhere. Messenger makes it easy and fun to stay close ...",
    "htmlSnippet":
        "\u003cb\u003eFacebook\u003c/b\u003e. Messenger &middot; Features &middot; Desktop App &middot; Privacy &amp; Safety &middot; For Developers. Hang out anytime, anywhere. Messenger makes it easy and fun to stay close&nbsp;...",
    "cacheId": "dNcS0EkXRJwJ",
    "formattedUrl": "https://www.messenger.com/",
    "htmlFormattedUrl": "https://www.messenger.com/",
    "pagemap": {
      "cse_thumbnail": [
        {
          "src":
              "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTyuS-P6_KUO_Mmj-JtmWActA6rDbMvjT3ICK-AHHP0CLnaYta0oNpDJYgW",
          "width": "310",
          "height": "163"
        }
      ],
      "metatags": [
        {
          "og:image":
              "https://static.xx.fbcdn.net/rsrc.php/v3/y2/r/yvbOx5two0W.png",
          "theme-color": "#3b5998",
          "twitter:card": "summary",
          "twitter:title": "Messenger",
          "og:type": "website",
          "og:site_name": "Facebook",
          "og:title": "Messenger",
          "og:description":
              "Hang out anytime, anywhere - Messenger makes it easy and fun to stay close to your favorite people.",
          "twitter:image":
              "https://static.xx.fbcdn.net/rsrc.php/v3/y2/r/yvbOx5two0W.png",
          "referrer": "origin-when-crossorigin",
          "twitter:image:alt": "Facebook Messenger logo",
          "og:locale:alternate": "en_GB",
          "viewport": "user-scalable=no,initial-scale=1,maximum-scale=1",
          "twitter:description":
              "Hang out anytime, anywhere - Messenger makes it easy and fun to stay close to your favorite people.",
          "mobile-web-app-capable": "yes",
          "og:locale": "en_US",
          "og:url": "https://www.messenger.com/"
        }
      ],
      "cse_image": [
        {"src": "https://static.xx.fbcdn.net/rsrc.php/v3/y2/r/yvbOx5two0W.png"}
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "Facebook - Apps on Google Play",
    "htmlTitle": "\u003cb\u003eFacebook\u003c/b\u003e - Apps on Google Play",
    "link":
        "https://play.google.com/store/apps/details?id=com.facebook.katana&hl=en_US&gl=US",
    "displayLink": "play.google.com",
    "snippet":
        "Keeping up with friends is faster and easier than ever. Share updates and photos, engage with friends and Pages, and stay connected to communities important ...",
    "htmlSnippet":
        "Keeping up with friends is faster and easier than ever. Share updates and photos, engage with friends and Pages, and stay connected to communities important&nbsp;...",
    "cacheId": "bNd2l2QPXRAJ",
    "formattedUrl":
        "https://play.google.com/store/apps/details?id=com.facebook.katana...",
    "htmlFormattedUrl":
        "https://play.google.com/store/apps/details?id=com.\u003cb\u003efacebook\u003c/b\u003e.katana...",
    "pagemap": {
      "offer": [
        {
          "price": "0",
          "url":
              "https://play.google.com/store/apps/details?id=com.facebook.katana&rdid=com.facebook.katana&feature=md&offerId"
        }
      ],
      "cse_thumbnail": [
        {
          "src":
              "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR6ybSRIVfIFYrDHxeF3nT8GMbk19-pVCg40VyVM3TBQbWoisjdXeSSYcQ",
          "width": "225",
          "height": "225"
        }
      ],
      "metatags": [
        {
          "og:image":
              "https://play-lh.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg",
          "og:type": "website",
          "twitter:card": "summary_large_image",
          "twitter:title": "Facebook - Apps on Google Play",
          "twitter:url":
              "https://play.google.com/store/apps/details?id=com.facebook.katana&hl=en_US",
          "appstore:developer_url": "https://www.facebook.com/facebook",
          "og:title": "Facebook - Apps on Google Play",
          "twitter:image":
              "https://play-lh.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg=w600-h300-pc0xffffff-pd",
          "appstore:bundle_id": "com.facebook.katana",
          "referrer": "origin",
          "twitter:site": "@GooglePlay",
          "appstore:store_id": "com.facebook.katana",
          "viewport": "width=device-width, initial-scale=1",
          "apple-mobile-web-app-capable": "yes",
          "twitter:description":
              "Find friends, watch live videos, play games & save photos in your social network",
          "mobile-web-app-capable": "yes",
          "og:url":
              "https://play.google.com/store/apps/details?id=com.facebook.katana&hl=en_US"
        }
      ],
      "cse_image": [
        {
          "src":
              "https://play-lh.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg"
        }
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "Meta | Social Metaverse Company",
    "htmlTitle": "Meta | Social Metaverse Company",
    "link": "https://about.meta.com/",
    "displayLink": "about.meta.com",
    "snippet":
        "Meta (formerly the Facebook company) builds technologies that help people connect, find communities and grow businesses. We're moving beyond 2D screens and ...",
    "htmlSnippet":
        "Meta (formerly the \u003cb\u003eFacebook\u003c/b\u003e company) builds technologies that help people connect, find communities and grow businesses. We&#39;re moving beyond 2D screens and&nbsp;...",
    "cacheId": "u3nep-rwtJsJ",
    "formattedUrl": "https://about.meta.com/",
    "htmlFormattedUrl": "https://about.meta.com/",
    "pagemap": {
      "metatags": [
        {
          "og:image":
              "https://scontent-ord5-2.xx.fbcdn.net/v/t39.8562-6/287877730_425552812771227_7561223086205157681_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6825c5&_nc_ohc=wEkuLFB0hZMAX899d1f&_nc_ht=scontent-ord5-2.xx&oh=00_AfC03CuvpmmAdcWRJVkvC0kriNhpiEfuJoji0zou9fwMkA&oe=64FC22FA",
          "twitter:card": "Meta | Social Metaverse Company",
          "og:type": "website",
          "og:site_name": "Meta | Social Metaverse Company",
          "msvalidate.01": "F26DE149442774285AE4BE9E36790FFB",
          "og:title": "Meta | Social Metaverse Company",
          "title": "Meta | Social Metaverse Company",
          "og:description":
              "Meta helps people, communities, and businesses do more together through our technologies and immersive experiences.",
          "facebook-domain-verification": "fojmnjf56wmxz7ee1cu9koeann4ykf",
          "referrer": "origin-when-crossorigin",
          "viewport": "width=device-width, initial-scale=1",
          "twitter:description":
              "Meta (formerly the Facebook company) builds technologies that help people connect, find communities and grow businesses. We're moving beyond 2D screens and into immersive experiences like virtual and augmented reality, helping create the next evolution of social technology.",
          "og:url": "https://about.meta.com/"
        }
      ],
      "cse_image": [
        {
          "src":
              "https://scontent-ord5-2.xx.fbcdn.net/v/t39.8562-6/287877730_425552812771227_7561223086205157681_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6825c5&_nc_ohc=wEkuLFB0hZMAX899d1f&_nc_ht=scontent-ord5-2.xx&oh=00_AfC03CuvpmmAdcWRJVkvC0kriNhpiEfuJoji0zou9fwMkA&oe=64FC22FA"
        }
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "The Facebook company is now Meta. We've updated our Terms of ...",
    "htmlTitle":
        "The \u003cb\u003eFacebook\u003c/b\u003e company is now Meta. We&#39;ve updated our Terms of ...",
    "link": "https://m.facebook.com/legal/terms",
    "displayLink": "m.facebook.com",
    "snippet":
        "These Terms govern your use of Facebook, Messenger, and the other products, features, apps, services, technologies, and software we offer (the Meta Products or ...",
    "htmlSnippet":
        "These Terms govern your use of \u003cb\u003eFacebook\u003c/b\u003e, Messenger, and the other products, features, apps, services, technologies, and software we offer (the Meta Products or&nbsp;...",
    "cacheId": "jV1V964bc7oJ",
    "formattedUrl": "https://m.facebook.com/legal/terms",
    "htmlFormattedUrl":
        "https://m.\u003cb\u003efacebook\u003c/b\u003e.com/legal/terms",
    "pagemap": {
      "metatags": [
        {
          "referrer": "origin-when-crossorigin",
          "theme-color": "#3b5998",
          "viewport": "user-scalable=no,initial-scale=1,maximum-scale=1"
        }
      ]
    }
  },
  {
    "kind": "customsearch#result",
    "title": "Facebook on the App Store",
    "htmlTitle": "\u003cb\u003eFacebook\u003c/b\u003e on the App Store",
    "link": "https://apps.apple.com/us/app/facebook/id284882215",
    "displayLink": "apps.apple.com",
    "snippet":
        "Read reviews, compare customer ratings, see screenshots, and learn more about Facebook. Download Facebook and enjoy it on your iPhone, iPad, and iPod touch.",
    "htmlSnippet":
        "Read reviews, compare customer ratings, see screenshots, and learn more about \u003cb\u003eFacebook\u003c/b\u003e. Download \u003cb\u003eFacebook\u003c/b\u003e and enjoy it on your iPhone, iPad, and iPod touch.",
    "formattedUrl": "https://apps.apple.com/us/app/facebook/id284882215",
    "htmlFormattedUrl":
        "https://apps.apple.com/us/app/\u003cb\u003efacebook\u003c/b\u003e/id284882215",
    "pagemap": {
      "cse_thumbnail": [
        {
          "src":
              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ_pVAPvF0yGVFv7Rx3_01RvBGBqqban3RZ-uwVN65NU9YABDmpb4Sd5oC_",
          "width": "310",
          "height": "163"
        }
      ],
      "metatags": [
        {
          "apple-itunes-app":
              "app-id=375380948, app-argument=https://apps.apple.com/us/app/facebook/id284882215",
          "og:image":
              "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/af/1e/8b/af1e8bfa-4fae-a310-0f9c-25594e2fe61d/Icon-Production-0-1x_U007emarketing-0-7-0-85-220.png/1200x630wa.png",
          "og:image:width": "1200",
          "twitter:card": "summary_large_image",
          "og:site_name": "App Store",
          "applicable-device": "pc,mobile",
          "og:image:type": "image/png",
          "og:description":
              "\u200eConnect with friends, family and people who share the same interests as you. Communicate privately, watch your favorite content, buy and sell items or just spend time with your community. On Facebook, keeping up with the people who matter most is easy. Discover, enjoy and do more together.\n  \nStay u…",
          "og:image:secure_url":
              "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/af/1e/8b/af1e8bfa-4fae-a310-0f9c-25594e2fe61d/Icon-Production-0-1x_U007emarketing-0-7-0-85-220.png/1200x630wa.png",
          "twitter:image":
              "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/af/1e/8b/af1e8bfa-4fae-a310-0f9c-25594e2fe61d/Icon-Production-0-1x_U007emarketing-0-7-0-85-220.png/1200x600wa.png",
          "web-experience-app/config/environment":
              "%7B%22appVersion%22%3A1%2C%22modulePrefix%22%3A%22web-experience-app%22%2C%22environment%22%3A%22production%22%2C%22rootURL%22%3A%22%2F%22%2C%22locationType%22%3A%22history-hash-router-scroll%22%2C%22historySupportMiddleware%22%3Atrue%2C%22EmberENV%22%3A%7B%22FEATURES%22%3A%7B%7D%2C%22EXTEND_PROTOTYPES%22%3A%7B%22Date%22%3Afalse%7D%2C%22_APPLICATION_TEMPLATE_WRAPPER%22%3Afalse%2C%22_DEFAULT_ASYNC_OBSERVERS%22%3Atrue%2C%22_JQUERY_INTEGRATION%22%3Afalse%2C%22_TEMPLATE_ONLY_GLIMMER_COMPONENTS%22%3Atrue%7D%2C%22APP%22%3A%7B%22PROGRESS_BAR_DELAY%22%3A3000%2C%22CLOCK_INTERVAL%22%3A1000%2C%22LOADING_SPINNER_SPY%22%3Atrue%2C%22BREAKPOINTS%22%3A%7B%22large%22%3A%7B%22min%22%3A1069%2C%22max%22%3A1440%2C%22content%22%3A980%7D%2C%22medium%22%3A%7B%22min%22%3A735%2C%22max%22%3A1068%2C%22content%22%3A692%7D%2C%22small%22%3A%7B%22min%22%3A320%2C%22max%22%3A734%2C%22content%22%3A280%7D%7D%2C%22buildVariant%22%3A%22apps%22%2C%22name%22%3A%22web-experience-app%22%2C%22version%22%3A%222332.4.0%2B1011c193%22%7D%2C%22MEDIA_API%22",
          "twitter:image:alt": "Facebook on the App Store",
          "twitter:site": "@AppStore",
          "og:image:alt": "Facebook on the App Store",
          "og:type": "website",
          "twitter:title": "\u200eFacebook",
          "og:title": "\u200eFacebook",
          "og:image:height": "630",
          "version": "2332.4.0",
          "globalnav-search-suggestions-enabled": "false",
          "viewport": "width=device-width, initial-scale=1, viewport-fit=cover",
          "ac-gn-search-suggestions-enabled": "false",
          "twitter:description":
              "\u200eConnect with friends, family and people who share the same interests as you. Communicate privately, watch your favorite content, buy and sell items or just spend time with your community. On Facebook, keeping up with the people who matter most is easy. Discover, enjoy and do more together.\n  \nStay u…",
          "og:locale": "en_US",
          "apple:content_id": "284882215",
          "og:url": "https://apps.apple.com/us/app/facebook/id284882215"
        }
      ],
      "cse_image": [
        {
          "src":
              "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/af/1e/8b/af1e8bfa-4fae-a310-0f9c-25594e2fe61d/Icon-Production-0-1x_U007emarketing-0-7-0-85-220.png/1200x630wa.png"
        }
      ]
    }
  }
];
