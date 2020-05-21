<#import "parts/common.ftl" as c>

<@c.page>
    <form class="form-inline">
        <div class="form-group sm-2 mb-2">
            <input type="text" class="form-control" name="filter" value="${filter!}" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-primary mb-2 ml-3">Search</button>
    </form>

    <#include "parts/offersEdit.ftl" />
    <#include "parts/offersList.ftl" />
</@c.page>