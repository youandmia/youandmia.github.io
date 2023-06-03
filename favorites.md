---
layout: default
permalink: /favorites
---
<div class="container d-flex align-items-center justify-content-center">
<div class="container-fluid">

    {% for elem in site.data.favorites %}
    <div class="row justify-content-center">
        <div class="col-md-12 col-lg-4 text-center">
            <h4 class="group-header"> {{ elem.header }} </h4>
            {% for node in elem.links %}
            <a class="fav-link" href="{{ node.link }}">{{ node.name }}</a>
            <p class="fav-link">{{ node.descr }}</p>
            {% endfor %}
        </div>
    </div>
    {% endfor %}


</div>
</div>