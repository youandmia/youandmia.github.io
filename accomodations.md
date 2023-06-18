---
layout: map
permalink: /accomodations
---

<div class="container d-flex align-items-center justify-content-center">
<div class="container-fluid">

    {% for elem in site.data.accomodations %}
    <div class="row justify-content-center">
        <div class="col-md-12 col-lg-4 text-center">
            {% for node in elem.links %}
            <a class="fav-link" href="{{ node.link }}">{{ node.name }}</a>
            <p class="fav-link">{{ node.addr}}</p>
            <p class="fav-link">{{ node.city}}</p>
            <p class="fav-link">{{ node.phone}}</p>
            <p class="fav-link">{{ node.descr}}</p>
            {% endfor %}
        </div>
    </div>
    {% endfor %}


</div>
</div>



<div class="container">
    <div class="row">
        <div class="col-auto"></div>
        <div class="col-map">
            <div id="map"></div>
        </div>
        <!-- Optional: clear the XS cols if their content doesn't match in height -->
        <div class="clearfix visible-xs-block"></div>
        <div class="col"></div>
    </div>
</div>

<script>
    const redIcon = new L.Icon({
      iconUrl:
        "https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-red.png",
      shadowUrl:
        "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
      iconSize: [25, 41],
      iconAnchor: [12, 41],
      popupAnchor: [1, -34],
      shadowSize: [41, 41]
    });
    var map = L.map('map').setView([32.84404, -117.27534], 15);
    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);
    var reception = L.marker([32.8445548, -117.2779950], {icon: redIcon}).bindPopup("Museum of Contemporary Art").addTo(map);
    var church = L.marker([32.8439363, -117.2730929],{icon: redIcon}).bindPopup("Mary, Star of the Sea").addTo(map);

    var grandecolonial = L.marker([32.84761742908753, -117.27547418650815]).
    bindPopup("Grande Colonial Hotel").addTo(map);
    var scrippsinn= L.marker([32.84381003593314, -117.27906202682348]).
    bindPopup("Scripps Inn").addTo(map);
    var lavalencia = L.marker([32.84876426064253, -117.27365158754262]).
    bindPopup("La Valencia Hotel").addTo(map);
    
</script>