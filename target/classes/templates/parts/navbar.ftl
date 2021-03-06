<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Example page</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/main">Offers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/users-offers/${currentUserId}">My Offers</a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Profile</a>
            </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">Users list</a>
            </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/message/techsupport">T.S. Messages</a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/message/main">Tech Support</a>
            </li>
            </#if>
            <li class="nav-item">
                <a class="nav-link" href="/help">Help</a>
            </li>
        </ul>
        <div class="navbar-text mr-3"><#if user??>${name}<#else>Please, log in</#if></div>
        <@l.logout />
    </div>
</nav>