'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "59c04a4939eb0ad649c4fdd9eb749dbf",
"assets/assets/burgerking_hero.jpg": "db0877cd84e677a5927b6d03ebb78cae",
"assets/assets/burgerking_logo.jpg": "dae582931d5dcb7069af6ff706fd4380",
"assets/assets/cake.jpg": "f299a8ad8d18c5be59c5d488c431b81c",
"assets/assets/checkers_hero.jpg": "56515438f3e6b973f021f27d3b3db65b",
"assets/assets/checkers_logo.png": "55e682756005ec1adbade5d662894cf4",
"assets/assets/cooking1.jpg": "f252b0254aed7ce8295608fe55bde5f0",
"assets/assets/food1.jpg": "32b915212b33e7363429f0ebb1f938d9",
"assets/assets/food_banana.jpg": "28b81838736f4ea48228a37589d694bf",
"assets/assets/food_brussels_sprouts.jpg": "4749cd82747801875a1c1d545cb5f435",
"assets/assets/food_burger.jpg": "ffc3463799a04569d0741019f3901df2",
"assets/assets/food_cucumber.jpg": "8fa5d8fdb838a5bc3d709d6d35369ed7",
"assets/assets/food_cupcake.jpg": "3a18b5a33e5ef956273a7e9aff184469",
"assets/assets/food_curry.jpg": "451de7dc12ddcc47abe1b061ec9423d9",
"assets/assets/food_dozen_eggs.jpg": "3dd6c07b0560270e3055221207d81ed7",
"assets/assets/food_flour.jpg": "635a6dac95e89f29b18794b669785148",
"assets/assets/food_friedrice.jpg": "99c906c9c472ba662e567e6578372578",
"assets/assets/food_green_beans.jpg": "82d95c746ba5744eca9cd9d37684243a",
"assets/assets/food_pancake.jpg": "d9b0a474f1c0c496821fad8b5e5d8050",
"assets/assets/food_peanutbutter.png": "009e6fd0b6cdcad24c1af0f5056fe50b",
"assets/assets/food_pho.jpg": "8901532618080a276cf6a53b792903e0",
"assets/assets/food_salmon.jpg": "875f12fcf5985eb2864c1dcef8da1063",
"assets/assets/food_soymilk.png": "2756ae43b13f8364f2b0226c4b74d137",
"assets/assets/food_spaghetti.jpg": "352bc4733d3ba759fa977f14881d8fa6",
"assets/assets/kfc_hero.jpg": "fd508b7b211256a30ef352b0167de54d",
"assets/assets/kfc_logo.jpg": "1b3ff00e46bba77e608776071c21a9d5",
"assets/assets/mcdonalds_hero.jpg": "ba50a49108fb3b7ca7f2a3a5cc04fc01",
"assets/assets/mcdonalds_logo.jpg": "63afd8d09dacb15481e9a03287ad7336",
"assets/assets/picknpay_logo.png": "b15ad30feb1066f3a3f71ac7ac4c1172",
"assets/assets/PnP_hero.jpg": "d4a2229bc428ffb81c9c80ec336eb30f",
"assets/assets/primi_hero.jpg": "9dc45a12de177a37177bd303bfd82ebe",
"assets/assets/profile.jpg": "8c4a18b6ff897b57aad55ca9fc6a43f7",
"assets/assets/sample%2520data/food_items.json": "6797c34c162812d6da5c5dde1e2ba28f",
"assets/assets/sample%2520data/vendor_sample_data.json": "8a24ef6d9c83b5c952b58d42f232ef86",
"assets/assets/starbucks_hero.jpg": "4dba90233e2ad06892126563010339ea",
"assets/assets/starbucks_logo.jpg": "3a762dc41e2f81f8f9b83d30eeadcea3",
"assets/assets/woolworths_hero.jpg": "1b048a1402ea0613fca908027f83c942",
"assets/assets/woolworths_logo.jpg": "2141ed4f110d2b3d4dfb435ce1db87bc",
"assets/FontManifest.json": "665be253f4172e29a3ec1fa239a07be2",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/fonts/rock-well-regular.ttf": "fcca3a4a6df1ab46dd94c73f2e912fde",
"assets/fonts/rockb.ttf": "b302ceccfeb4062f4128d9e07f67c210",
"assets/NOTICES": "ed24fa26ed1603e9c656bb0847e5728c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "6333b551ea27fd9d8e1271e92def26a9",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "df2ad7449c77bafbdbf7587c13bdf0e4",
"/": "df2ad7449c77bafbdbf7587c13bdf0e4",
"main.dart.js": "191241b5a5434f92ba384f3b2c159542",
"manifest.json": "03660ddc95434b39b992720d60a12c94",
"version.json": "a1d6fc403198539ca4887f2aedf38ad0"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
