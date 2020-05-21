<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<#import "parts/pager.ftl" as p>

<@c.page>
<@p.pager url page />

<div class="card-columns">
    <#list page.content as message>
        <div class="card my-3">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>${message.email}</i>
            </div>
            <div class="card-footer text-muted">
                <a class="btn btn-secondary my-2" href="/moreInfo/${message.id}">More info</a>
            </div>
        </div>
    <#else>
        There is nothing to show
    </#list>
</div>
<@p.pager url page />
</@c.page>