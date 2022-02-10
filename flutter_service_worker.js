'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/images/Mushroom_2_Less.png": "e5c366d699e75a6a6a7365f7990845a2",
"assets/assets/images/foots_2.png": "db8da173afcece7396af8cb8976e2dc2",
"assets/assets/images/Yarn_Cat.PNG": "f38982ae2ac5f256c3feaa74d69d94cd",
"assets/assets/images/Floral_Design_New.png": "35596dfd740deb8a1fa9afed4730286a",
"assets/assets/images/Title_Different.jpeg": "b4e13dd7478f23f3ec884e865c65876e",
"assets/assets/images/Glasses_Cat.png": "ec68027fa373b8fd16ae5ce99e021556",
"assets/assets/images/Shirt_Less.png": "c5d9f246841ab841a1d1b60503f3a5ff",
"assets/assets/images/Title_Image_Only2.png": "f47f893f7a9b3afdc54811acea92d738",
"assets/assets/images/Fabric_Cat.PNG": "8e86953f88c7a4ca50a65bc01bd81fac",
"assets/assets/images/Logo.png": "b7743cc68eb7a5f1ca1d04c6c699eb23",
"assets/assets/images/FlufflyCat2.png": "bc12d7322175ca04bf33a5e2e92771c7",
"assets/assets/images/Title_Image_Only.png": "0bea71fe5b93ad8ce46e0156ed1afeeb",
"assets/assets/images/Shirt.PNG": "04a1faee5b4e149a751f5980b66294d0",
"assets/assets/images/Dress_Image.PNG": "4c64140a729907cab7d44342b6a51a1b",
"assets/assets/images/Floral_Footer_2.png": "0574a531319d9cd9886f5a96c0493691",
"assets/assets/images/Title_Image.jpeg": "078f045387843391356ca8c221ef289c",
"assets/assets/images/foots_left.png": "43e7ebe434244d40cb0087692904b386",
"assets/assets/images/foots_left.jpg": "e98e502a8c41b1f464de872a8b4b8d1f",
"assets/assets/images/2021-2022-Release-Form-Fillable.pdf": "387f0afa101c3e359679f65f5e195977",
"assets/assets/images/foots.PNG": "064036527dd37425e9914ee3c05416cd",
"assets/assets/images/Thrifting_Cat.png": "79f48c60077471de4513eb0d387a3e77",
"assets/assets/images/Background.jpeg": "6f1bc8f0e323867d482bac7bea1deac0",
"assets/assets/images/Pant_Small_2.png": "0bb0ee0219cf4cfd1273d70ba24f0670",
"assets/assets/images/foots_right.jpg": "1c3ab1abee19236cac897ae5a042e41e",
"assets/assets/images/Mushroom.PNG": "8ae7463c02e49e117e38a07797db4bdd",
"assets/assets/images/Title_Image_Short.jpeg": "d56c23392669a40acdc877ee5f2e10cf",
"assets/assets/images/Dress_Image_New.png": "028b8921c007dadd3714078d61cdf84d",
"assets/assets/images/At_Home_Image.png": "7484664b931ca509ec46753d6806bfe3",
"assets/assets/images/Fluffly_Cat_New.png": "1d31b2df233ab8c607e026351c9c6101",
"assets/assets/images/Phone_Cat.png": "18a23574de626184f3e0fec4474f0578",
"assets/assets/images/Logo_2.png": "2c935e388bff9dae440fbdd08dc6024c",
"assets/assets/images/Yarn_Cat_2.png": "76394e0d3bf233b736fb8fcd58f99337",
"assets/assets/images/Pant_Small.png": "9c89b971e7cfd5effa711630f432d860",
"assets/assets/images/Floral_Footer.png": "e4cd603ef8b131cb2c36a835759e8345",
"assets/assets/images/Floral_Border_New.PNG": "fbba3fb4e59ecc90daad6aebf0279efe",
"assets/assets/images/foots_right.png": "21dba4e2985e4db22df55cdc3cedccf0",
"assets/assets/images/Dress_Titled.png": "b103e42ea1191b28ba63b05bfcb2ffd5",
"assets/assets/images/foots_3.png": "b201a655808a7c2d5c1f582ce5a59278",
"assets/assets/images/Floral_Design.png": "b66da234cd4c4e77514392a2e35e6c44",
"assets/assets/images/Com_Image.png": "818f5b52aef6d4a511d0805c7ccc28b7",
"assets/assets/images/Pant.PNG": "0302d361860bf91003835e1f374ae266",
"assets/assets/images/Thrifting_Cat_2.png": "2e466286b02e3f8e5087e2624eb6623f",
"assets/assets/images/Shirt_Cat.PNG": "6f33859b333be026e795c5142f5495e9",
"assets/assets/images/Flower_Image_Small.png": "deff9f310ae091fb8eed48298528c9e1",
"assets/assets/images/Sleepy_Thinky_Cat.png": "8d7e311541fe5b2dd3f7c634e38b3f0c",
"assets/assets/images/Online_Cat.PNG": "d8690c8ee42aa8cc0f1b14c87204c9d2",
"assets/assets/images/Mushroom_Less.png": "43c9453493e1d8a2adbc47390bc26f21",
"assets/assets/images/Glasses_Cat_2.png": "7b2e054987065c1210f38abb7c329318",
"assets/assets/images/Mushroom_2.png": "41da843d9187c58ed7d9eebd757c5f3e",
"assets/assets/images/Sus_Image.png": "0ef2a1b0b44564b52d35bfd71caa1cab",
"assets/assets/fonts/AbrilFatface-Regular.ttf": "28195c14e6a271f42ca0994fac4fb0e4",
"assets/assets/fonts/CrimsonText-Bold.ttf": "060a8117c94ab988ca9b31d046165325",
"assets/assets/fonts/CrimsonText-Regular.ttf": "134c01579408e332173c23a30528c586",
"assets/assets/fonts/CrimsonText-Italic.ttf": "69f39a51792dd7ac2982e02fc9ec8fed",
"assets/FontManifest.json": "dbf5f86c0d1313a36e7feb15aa8f0e53",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "974c759f4822f8ab5c2d39f22a3cdc12",
"assets/NOTICES": "46612787d58e6ae528e20235f462ece0",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"index.html": "c25901bed171f8f3e1080ed9e3ded3d8",
"/": "c25901bed171f8f3e1080ed9e3ded3d8",
"version.json": "c2a08cda2a1e690bfed5ce9fc4d9e5b1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"main.dart.js": "b20e8470aee94d5df889d23645b3a081",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "c421511f2c33bfb0568444a65bab34ab",
"canvaskit/profiling/canvaskit.js": "3783918f48ef691e230156c251169480",
"canvaskit/profiling/canvaskit.wasm": "6d1b0fc1ec88c3110db88caa3393c580",
"canvaskit/canvaskit.js": "62b9906717d7215a6ff4cc24efbd1b5c",
"canvaskit/canvaskit.wasm": "b179ba02b7a9f61ebc108f82c5a1ecdb"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
