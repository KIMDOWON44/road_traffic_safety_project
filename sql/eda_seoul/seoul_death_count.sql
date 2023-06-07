<!DOCTYPE html>
<html>
<head>
    
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    
        <script>
            L_NO_TOUCH = false;
            L_DISABLE_3D = false;
        </script>
    
    <style>html, body {width: 100%;height: 100%;margin: 0;padding: 0;}</style>
    <style>#map {position:absolute;top:0;bottom:0;right:0;left:0;}</style>
    <script src="https://cdn.jsdelivr.net/npm/leaflet@1.9.3/dist/leaflet.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.2/leaflet.awesome-markers.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet@1.9.3/dist/leaflet.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.2/leaflet.awesome-markers.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/python-visualization/folium/folium/templates/leaflet.awesome.rotate.min.css"/>
    
            <meta name="viewport" content="width=device-width,
                initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
            <style>
                #map_df6770f77725223ab2a334c4f9eab0c1 {
                    position: relative;
                    width: 100.0%;
                    height: 100.0%;
                    left: 0.0%;
                    top: 0.0%;
                }
                .leaflet-container { font-size: 1rem; }
            </style>
        
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
</head>
<body>
    
    
            <div class="folium-map" id="map_df6770f77725223ab2a334c4f9eab0c1" ></div>
        
</body>
<script>
    
    
            var map_df6770f77725223ab2a334c4f9eab0c1 = L.map(
                "map_df6770f77725223ab2a334c4f9eab0c1",
                {
                    center: [37.5665, 126.978],
                    crs: L.CRS.EPSG3857,
                    zoom: 9,
                    zoomControl: true,
                    preferCanvas: false,
                }
            );

            

        
    
            var tile_layer_fa3aeece85062a6ca02846841101b988 = L.tileLayer(
                "https://stamen-tiles-{s}.a.ssl.fastly.net/terrain/{z}/{x}/{y}.jpg",
                {"attribution": "Map tiles by \u003ca target=\"_blank\" href=\"http://stamen.com\"\u003eStamen Design\u003c/a\u003e, under \u003ca target=\"_blank\" href=\"http://creativecommons.org/licenses/by/3.0\"\u003eCC BY 3.0\u003c/a\u003e. Data by \u0026copy; \u003ca target=\"_blank\" href=\"http://openstreetmap.org\"\u003eOpenStreetMap\u003c/a\u003e, under \u003ca target=\"_blank\" href=\"http://creativecommons.org/licenses/by-sa/3.0\"\u003eCC BY SA\u003c/a\u003e.", "detectRetina": false, "maxNativeZoom": 18, "maxZoom": 18, "minZoom": 0, "noWrap": false, "opacity": 1, "subdomains": "abc", "tms": false}
            ).addTo(map_df6770f77725223ab2a334c4f9eab0c1);
        
    
            var choropleth_b6680409b41fe8e0a8c850bc1fb05dc5 = L.featureGroup(
                {}
            ).addTo(map_df6770f77725223ab2a334c4f9eab0c1);
        
    
        function geo_json_b18bf57664f0352e3e8f604702f60b3f_styler(feature) {
            switch(feature.properties.SIG_CD) {
                case "11320": case "11380": case "11530": case "11110": case "11140": case "11215": case "11290": case "11350": case "11710": case "11410": case "11170": 
                    return {"color": "black", "fillColor": "#ffeda0", "fillOpacity": 0.7, "opacity": 0.3, "weight": 1};
                case "11230": 
                    return {"color": "black", "fillColor": "#f03b20", "fillOpacity": 0.7, "opacity": 0.3, "weight": 1};
                default:
                    return {"color": "black", "fillColor": "#feb24c", "fillOpacity": 0.7, "opacity": 0.3, "weight": 1};
            }
        }

        function geo_json_b18bf57664f0352e3e8f604702f60b3f_onEachFeature(feature, layer) {
            layer.on({
            });
        };
        var geo_json_b18bf57664f0352e3e8f604702f60b3f = L.geoJson(null, {
                onEachFeature: geo_json_b18bf57664f0352e3e8f604702f60b3f_onEachFeature,
            
                style: geo_json_b18bf57664f0352e3e8f604702f60b3f_styler,
        });

        function geo_json_b18bf57664f0352e3e8f604702f60b3f_add (data) {
            geo_json_b18bf57664f0352e3e8f604702f60b3f
                .addData(data)
                .addTo(choropleth_b6680409b41fe8e0a8c850bc1fb05dc5);
        }

        
    
    var color_map_8f166f07ee4bac4bede69f2258a5ec14 = {};

    
    color_map_8f166f07ee4bac4bede69f2258a5ec14.color = d3.scale.threshold()
              .domain([0.0, 0.03006012024048096, 0.06012024048096192, 0.09018036072144289, 0.12024048096192384, 0.15030060120240482, 0.18036072144288579, 0.21042084168336672, 0.24048096192384769, 0.27054108216432865, 0.30060120240480964, 0.3306613226452906, 0.36072144288577157, 0.3907815631262525, 0.42084168336673344, 0.45090180360721444, 0.48096192384769537, 0.5110220440881763, 0.5410821643286573, 0.5711422845691383, 0.6012024048096193, 0.6312625250501002, 0.6613226452905812, 0.6913827655310621, 0.7214428857715431, 0.751503006012024, 0.781563126252505, 0.811623246492986, 0.8416833667334669, 0.8717434869739479, 0.9018036072144289, 0.9318637274549099, 0.9619238476953907, 0.9919839679358717, 1.0220440881763526, 1.0521042084168337, 1.0821643286573146, 1.1122244488977955, 1.1422845691382766, 1.1723446893787575, 1.2024048096192386, 1.2324649298597194, 1.2625250501002003, 1.2925851703406814, 1.3226452905811623, 1.3527054108216432, 1.3827655310621243, 1.4128256513026052, 1.4428857715430863, 1.4729458917835672, 1.503006012024048, 1.5330661322645291, 1.56312625250501, 1.593186372745491, 1.623246492985972, 1.653306613226453, 1.6833667334669338, 1.7134268537074149, 1.7434869739478958, 1.7735470941883769, 1.8036072144288577, 1.8336673346693386, 1.8637274549098197, 1.8937875751503006, 1.9238476953907815, 1.9539078156312626, 1.9839679358717435, 2.0140280561122244, 2.0440881763527052, 2.0741482965931866, 2.1042084168336674, 2.1342685370741483, 2.164328657314629, 2.19438877755511, 2.224448897795591, 2.2545090180360723, 2.284569138276553, 2.314629258517034, 2.344689378757515, 2.374749498997996, 2.404809619238477, 2.434869739478958, 2.464929859719439, 2.49498997995992, 2.5250501002004007, 2.555110220440882, 2.585170340681363, 2.6152304609218437, 2.6452905811623246, 2.6753507014028055, 2.7054108216432864, 2.7354709418837677, 2.7655310621242486, 2.7955911823647295, 2.8256513026052104, 2.8557114228456912, 2.8857715430861726, 2.9158316633266534, 2.9458917835671343, 2.975951903807615, 3.006012024048096, 3.036072144288577, 3.0661322645290583, 3.096192384769539, 3.12625250501002, 3.156312625250501, 3.186372745490982, 3.216432865731463, 3.246492985971944, 3.276553106212425, 3.306613226452906, 3.3366733466933867, 3.3667334669338675, 3.396793587174349, 3.4268537074148298, 3.4569138276553106, 3.4869739478957915, 3.5170340681362724, 3.5470941883767537, 3.5771543086172346, 3.6072144288577155, 3.6372745490981964, 3.6673346693386772, 3.697394789579158, 3.7274549098196395, 3.7575150300601203, 3.787575150300601, 3.817635270541082, 3.847695390781563, 3.8777555110220443, 3.907815631262525, 3.937875751503006, 3.967935871743487, 3.997995991983968, 4.028056112224449, 4.05811623246493, 4.0881763527054105, 4.118236472945892, 4.148296593186373, 4.1783567134268536, 4.208416833667335, 4.238476953907815, 4.268537074148297, 4.298597194388778, 4.328657314629258, 4.35871743486974, 4.38877755511022, 4.4188376753507015, 4.448897795591182, 4.478957915831663, 4.509018036072145, 4.539078156312625, 4.569138276553106, 4.599198396793587, 4.629258517034068, 4.659318637274549, 4.68937875751503, 4.719438877755511, 4.749498997995992, 4.779559118236473, 4.809619238476954, 4.839679358717435, 4.869739478957916, 4.8997995991983965, 4.929859719438878, 4.959919839679359, 4.98997995991984, 5.020040080160321, 5.050100200400801, 5.080160320641283, 5.110220440881764, 5.140280561122244, 5.170340681362726, 5.200400801603206, 5.2304609218436875, 5.260521042084168, 5.290581162324649, 5.320641282565131, 5.350701402805611, 5.380761523046092, 5.410821643286573, 5.440881763527054, 5.470941883767535, 5.501002004008016, 5.531062124248497, 5.561122244488978, 5.591182364729459, 5.62124248496994, 5.651302605210421, 5.681362725450902, 5.7114228456913825, 5.741482965931864, 5.771543086172345, 5.801603206412826, 5.831663326653307, 5.861723446893787, 5.891783567134269, 5.921843687374749, 5.95190380761523, 5.981963927855712, 6.012024048096192, 6.0420841683366735, 6.072144288577154, 6.102204408817635, 6.132264529058117, 6.162324649298597, 6.192384769539078, 6.222444889779559, 6.25250501002004, 6.282565130260521, 6.312625250501002, 6.342685370741483, 6.372745490981964, 6.402805611222445, 6.432865731462926, 6.462925851703407, 6.492985971943888, 6.5230460921843685, 6.55310621242485, 6.58316633266533, 6.613226452905812, 6.643286573146293, 6.673346693386773, 6.703406813627255, 6.733466933867735, 6.763527054108216, 6.793587174348698, 6.823647294589178, 6.8537074148296595, 6.88376753507014, 6.913827655310621, 6.943887775551103, 6.973947895791583, 7.004008016032064, 7.034068136272545, 7.064128256513026, 7.094188376753507, 7.124248496993988, 7.154308617234469, 7.18436873747495, 7.214428857715431, 7.244488977955911, 7.274549098196393, 7.304609218436874, 7.3346693386773545, 7.364729458917836, 7.394789579158316, 7.424849699398798, 7.454909819639279, 7.484969939879759, 7.515030060120241, 7.545090180360721, 7.575150300601202, 7.605210420841684, 7.635270541082164, 7.6653306613226455, 7.695390781563126, 7.725450901803607, 7.755511022044089, 7.785571142284569, 7.81563126252505, 7.845691382765531, 7.875751503006012, 7.905811623246493, 7.935871743486974, 7.965931863727455, 7.995991983967936, 8.026052104208416, 8.056112224448897, 8.086172344689379, 8.11623246492986, 8.146292585170341, 8.176352705410821, 8.206412825651302, 8.236472945891784, 8.266533066132265, 8.296593186372746, 8.326653306613226, 8.356713426853707, 8.386773547094188, 8.41683366733467, 8.446893787575151, 8.47695390781563, 8.507014028056112, 8.537074148296593, 8.567134268537075, 8.597194388777556, 8.627254509018035, 8.657314629258517, 8.687374749498998, 8.71743486973948, 8.74749498997996, 8.77755511022044, 8.807615230460922, 8.837675350701403, 8.867735470941884, 8.897795591182364, 8.927855711422845, 8.957915831663327, 8.987975951903808, 9.01803607214429, 9.048096192384769, 9.07815631262525, 9.108216432865731, 9.138276553106213, 9.168336673346694, 9.198396793587174, 9.228456913827655, 9.258517034068136, 9.288577154308618, 9.318637274549099, 9.348697394789578, 9.37875751503006, 9.408817635270541, 9.438877755511022, 9.468937875751504, 9.498997995991983, 9.529058116232465, 9.559118236472946, 9.589178356713427, 9.619238476953909, 9.649298597194388, 9.67935871743487, 9.70941883767535, 9.739478957915832, 9.769539078156313, 9.799599198396793, 9.829659318637274, 9.859719438877756, 9.889779559118237, 9.919839679358718, 9.949899799599198, 9.97995991983968, 10.01002004008016, 10.040080160320642, 10.070140280561123, 10.100200400801603, 10.130260521042084, 10.160320641282565, 10.190380761523047, 10.220440881763528, 10.250501002004007, 10.280561122244489, 10.31062124248497, 10.340681362725451, 10.370741482965931, 10.400801603206412, 10.430861723446894, 10.460921843687375, 10.490981963927856, 10.521042084168336, 10.551102204408817, 10.581162324649299, 10.61122244488978, 10.641282565130261, 10.67134268537074, 10.701402805611222, 10.731462925851703, 10.761523046092185, 10.791583166332666, 10.821643286573146, 10.851703406813627, 10.881763527054108, 10.91182364729459, 10.94188376753507, 10.97194388777555, 11.002004008016032, 11.032064128256513, 11.062124248496994, 11.092184368737476, 11.122244488977955, 11.152304609218437, 11.182364729458918, 11.2124248496994, 11.24248496993988, 11.27254509018036, 11.302605210420841, 11.332665330661323, 11.362725450901804, 11.392785571142285, 11.422845691382765, 11.452905811623246, 11.482965931863728, 11.513026052104209, 11.54308617234469, 11.57314629258517, 11.603206412825651, 11.633266533066132, 11.663326653306614, 11.693386773547093, 11.723446893787575, 11.753507014028056, 11.783567134268537, 11.813627254509019, 11.843687374749498, 11.87374749498998, 11.90380761523046, 11.933867735470942, 11.963927855711423, 11.993987975951903, 12.024048096192384, 12.054108216432866, 12.084168336673347, 12.114228456913828, 12.144288577154308, 12.17434869739479, 12.20440881763527, 12.234468937875752, 12.264529058116233, 12.294589178356713, 12.324649298597194, 12.354709418837675, 12.384769539078157, 12.414829659318638, 12.444889779559118, 12.474949899799599, 12.50501002004008, 12.535070140280562, 12.565130260521043, 12.595190380761522, 12.625250501002004, 12.655310621242485, 12.685370741482966, 12.715430861723448, 12.745490981963927, 12.775551102204409, 12.80561122244489, 12.835671342685371, 12.865731462925853, 12.895791583166332, 12.925851703406813, 12.955911823647295, 12.985971943887776, 13.016032064128256, 13.046092184368737, 13.076152304609218, 13.1062124248497, 13.136272545090181, 13.16633266533066, 13.196392785571142, 13.226452905811623, 13.256513026052104, 13.286573146292586, 13.316633266533065, 13.346693386773547, 13.376753507014028, 13.40681362725451, 13.43687374749499, 13.46693386773547, 13.496993987975952, 13.527054108216433, 13.557114228456914, 13.587174348697395, 13.617234468937875, 13.647294589178356, 13.677354709418838, 13.707414829659319, 13.7374749498998, 13.76753507014028, 13.797595190380761, 13.827655310621243, 13.857715430861724, 13.887775551102205, 13.917835671342685, 13.947895791583166, 13.977955911823647, 14.008016032064129, 14.03807615230461, 14.06813627254509, 14.098196392785571, 14.128256513026052, 14.158316633266534, 14.188376753507015, 14.218436873747494, 14.248496993987976, 14.278557114228457, 14.308617234468938, 14.338677354709418, 14.3687374749499, 14.39879759519038, 14.428857715430862, 14.458917835671343, 14.488977955911823, 14.519038076152304, 14.549098196392785, 14.579158316633267, 14.609218436873748, 14.639278557114228, 14.669338677354709, 14.69939879759519, 14.729458917835672, 14.759519038076153, 14.789579158316633, 14.819639278557114, 14.849699398797595, 14.879759519038076, 14.909819639278558, 14.939879759519037, 14.969939879759519, 15.0])
              .range(['#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#ffeda0ff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#feb24cff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff', '#f03b20ff']);
    

    color_map_8f166f07ee4bac4bede69f2258a5ec14.x = d3.scale.linear()
              .domain([0.0, 15.0])
              .range([0, 450 - 50]);

    color_map_8f166f07ee4bac4bede69f2258a5ec14.legend = L.control({position: 'topright'});
    color_map_8f166f07ee4bac4bede69f2258a5ec14.legend.onAdd = function (map) {var div = L.DomUtil.create('div', 'legend'); return div};
    color_map_8f166f07ee4bac4bede69f2258a5ec14.legend.addTo(map_df6770f77725223ab2a334c4f9eab0c1);

    color_map_8f166f07ee4bac4bede69f2258a5ec14.xAxis = d3.svg.axis()
        .scale(color_map_8f166f07ee4bac4bede69f2258a5ec14.x)
        .orient("top")
        .tickSize(1)
        .tickValues([0, 5, 10, 15]);

    color_map_8f166f07ee4bac4bede69f2258a5ec14.svg = d3.select(".legend.leaflet-control").append("svg")
        .attr("id", 'legend')
        .attr("width", 450)
        .attr("height", 40);

    color_map_8f166f07ee4bac4bede69f2258a5ec14.g = color_map_8f166f07ee4bac4bede69f2258a5ec14.svg.append("g")
        .attr("class", "key")
        .attr("transform", "translate(25,16)");

    color_map_8f166f07ee4bac4bede69f2258a5ec14.g.selectAll("rect")
        .data(color_map_8f166f07ee4bac4bede69f2258a5ec14.color.range().map(function(d, i) {
          return {
            x0: i ? color_map_8f166f07ee4bac4bede69f2258a5ec14.x(color_map_8f166f07ee4bac4bede69f2258a5ec14.color.domain()[i - 1]) : color_map_8f166f07ee4bac4bede69f2258a5ec14.x.range()[0],
            x1: i < color_map_8f166f07ee4bac4bede69f2258a5ec14.color.domain().length ? color_map_8f166f07ee4bac4bede69f2258a5ec14.x(color_map_8f166f07ee4bac4bede69f2258a5ec14.color.domain()[i]) : color_map_8f166f07ee4bac4bede69f2258a5ec14.x.range()[1],
            z: d
          };
        }))
      .enter().append("rect")
        .attr("height", 40 - 30)
        .attr("x", function(d) { return d.x0; })
        .attr("width", function(d) { return d.x1 - d.x0; })
        .style("fill", function(d) { return d.z; });

    color_map_8f166f07ee4bac4bede69f2258a5ec14.g.call(color_map_8f166f07ee4bac4bede69f2258a5ec14.xAxis).append("text")
        .attr("class", "caption")
        .attr("y", 21)
        .text("");
</script>
</html>