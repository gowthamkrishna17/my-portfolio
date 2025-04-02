'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".vercel/project.json": "aba516a4668401d72846cb0a05ec1121",
".vercel/README.txt": "2b13c79d37d6ed82a3255b83b6815034",
"assets/AssetManifest.bin": "0dc3b4fad04e10d4131080d54a2c95a1",
"assets/AssetManifest.bin.json": "c4c3ae9f7effc9da7d20b5b6ca6592e2",
"assets/AssetManifest.json": "c9c9f047c7eec44195d3a05eb10d62a9",
"assets/assets/fonts/Comic%2520Book.otf": "7599cff5acd78ecf7fee84263bcbea54",
"assets/assets/fonts/Exo-Bold.ttf": "2d31ae03880932a6403aecc932cb8156",
"assets/assets/fonts/Exo-Medium.ttf": "a8bcd2576c0313cfb95db652af449963",
"assets/assets/fonts/KOMIKAX_.ttf": "948114af9fe60735a6de25fa281c190c",
"assets/assets/icon/email.png": "57785b3921a2c43a6ac9931b488fd38f",
"assets/assets/icon/emailfill.png": "49b9a54d1a66305ee959325dc2ebc7c6",
"assets/assets/icon/github.png": "63de5479e8eb4676570c49e2579cab01",
"assets/assets/icon/icons8-css-144.png": "f106950cc79041ada8fd3b143f47fd75",
"assets/assets/icon/icons8-dart-144.png": "cdc189d734b00c7dc950bda7bf0d0b63",
"assets/assets/icon/icons8-flutter-144.png": "11730d08fa60e5d497c6827f65288e85",
"assets/assets/icon/icons8-html-144.png": "19b4a0aa5fbe88bd09b7fba7766059f5",
"assets/assets/icon/message.png": "241aa7a368da37f807ed1869cf280fab",
"assets/assets/icon/whatsapp.png": "19455d676899e370bd5cc0bab6b41c6f",
"assets/assets/lottie/Adobe%2520Express%2520-%2520file.png": "016a6875e91000f87ceece75ee25b506",
"assets/assets/lottie/Animation%2520-%25201743131774683%2520(1).json": "3a888583e8ea2a5d99323db1f561e41a",
"assets/assets/lottie/Animation%2520-%25201743131774683.lottie": "7286010bd00758830fac0fcdbec3998e",
"assets/assets/lottie/Animation%2520-%25201743141255917.lottie": "ca78e6065cc72019d93bf1d4994afb6c",
"assets/assets/lottie/Animation%2520-%25201743142597346.json": "1b9d418606d478e6ac7f9e1011c52347",
"assets/assets/lottie/flutterResume_17.pdf": "b2f73af0269931ccbe0c29cb1d950b0b",
"assets/assets/lottie/IMG_3704.JPG": "761122b487a86e42e2fdacb77a45c054",
"assets/assets/screenshorts/screen%2520(1).jpg": "014b23f939aeae014b2073198d349bb7",
"assets/assets/screenshorts/screen%2520(10).jpg": "621e6d9fd560e4034a48ce95b8428691",
"assets/assets/screenshorts/screen%2520(11).jpg": "a49b6fd94b69c25b388ae31fafbc9e82",
"assets/assets/screenshorts/screen%2520(12).jpg": "8fe292f8bbaa4e8cd906c15cc5495f4b",
"assets/assets/screenshorts/screen%2520(13).jpg": "0dc12ab651a0c90f2ef577f84e00efb0",
"assets/assets/screenshorts/screen%2520(14).jpg": "5d02a992bccd3e084396e6669168b319",
"assets/assets/screenshorts/screen%2520(15).jpg": "fe27fcae743c4257002c171909c1021c",
"assets/assets/screenshorts/screen%2520(16).jpg": "391d9decf7de580df1b7ed5569792df8",
"assets/assets/screenshorts/screen%2520(17).jpg": "5a65d0bcfe26966bb99584909edd77e4",
"assets/assets/screenshorts/screen%2520(18).jpg": "b2fce76774701e92e5c7a76a451aa33a",
"assets/assets/screenshorts/screen%2520(19).jpg": "e75425952e59998628240c7888abc8c3",
"assets/assets/screenshorts/screen%2520(2).jpg": "a638251c2758071bfbc9e625100f4464",
"assets/assets/screenshorts/screen%2520(20).jpg": "63f4a3f791e9ab6834926ae2a6ae3db9",
"assets/assets/screenshorts/screen%2520(21).jpg": "1cd079c5753bc818d4edabbd9dfdedda",
"assets/assets/screenshorts/screen%2520(22).jpg": "cd08e751ab384a5b8c85a325a29d85f3",
"assets/assets/screenshorts/screen%2520(23).jpg": "452b31f44e96889ab989f396c4248adb",
"assets/assets/screenshorts/screen%2520(24).jpg": "3f6c99e6800f5c1335ad7a2429370524",
"assets/assets/screenshorts/screen%2520(25).jpg": "ef12de0a1a521eb646cc6e6a05a4549a",
"assets/assets/screenshorts/screen%2520(26).jpg": "bb04db4068321c4a36c1d74b12aed8e4",
"assets/assets/screenshorts/screen%2520(27).jpg": "6d18ae1c9b283be5b713de5140644b86",
"assets/assets/screenshorts/screen%2520(28).jpg": "645064b8ddaf331736bc3f28dc969695",
"assets/assets/screenshorts/screen%2520(3).jpg": "2c26857732ca39702a9a7a68624da9fa",
"assets/assets/screenshorts/screen%2520(4).jpg": "e3a20413832205569a4594e9f31976ed",
"assets/assets/screenshorts/screen%2520(5).jpg": "e860a6d4ec1473c18c50c33c8c78263c",
"assets/assets/screenshorts/screen%2520(6).jpg": "8b36c1ee326779b30074a8efa74f8f92",
"assets/assets/screenshorts/screen%2520(7).jpg": "8896fc25b3132aacd9706187952dd8d2",
"assets/assets/screenshorts/screen%2520(8).jpg": "16a4eb7d5b331fc9cc87a5ea62d40e62",
"assets/assets/screenshorts/screen%2520(9).jpg": "0ee34b09d02388a243bb8cb11f28e6ef",
"assets/FontManifest.json": "61b04e40b4d4a78ac543ace7f8a86b2b",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "0e4c7be24a8ea5b5be9aa5d82781fb56",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "c5cf7482dc109783a73ee9763669d6fd",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "55f21de789fde4185db079ccc7173573",
"/": "55f21de789fde4185db079ccc7173573",
"main.dart.js": "0517eddf1f4739e1998034850a0eef0f",
"manifest.json": "452a717921227321b0ac624fac6b7b2d",
"version.json": "40e7b06505e2c3869ae177334fa1b1b4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
