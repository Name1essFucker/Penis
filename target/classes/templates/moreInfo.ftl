<#import "parts/common.ftl" as c>

<@c.page>

    <h5>${message.authorName}</h5>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="/img/${message.filename}" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/img/${message.filename}" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/img/${message.filename}" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="form-group row my-3" >
        <label for="text" class="col-sm-2 col-form-label">Text</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="text" value="${message.text}">
        </div>
        <label for="email" class="col-sm-2 col-form-label">e-mail</label>
        <div class="col-sm-10">
            <input type="email" readonly class="form-control-plaintext" id="email" value="${message.email}">
        </div>
        <label for="author" class="col-sm-2 col-form-label">Author</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="price" value="${message.authorName}">
        </div>
</@c.page>