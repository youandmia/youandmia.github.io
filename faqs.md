---
layout: default
permalink: /faqs
---
<div class="container d-flex align-items-center justify-content-center">
<div class="container-fluid">

    {% for elem in site.data.faqs %}
    <div class="row justify-content-center">
        <div class="col-md-12 col-lg-4 text-center">
            <h4 class="group-header"> {{ elem.header }} </h4>
            {% for node in elem.questions %}
            <p class="fav-question">{{ node.q }}</p>
            <p class="fav-link">{{ node.a}}</p>
            {% endfor %}
        </div>
    </div>
    {% endfor %}


</div>
</div>