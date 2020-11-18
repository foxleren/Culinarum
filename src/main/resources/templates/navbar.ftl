<#import "security.ftl" as s>

<header>
    <div class="header-container">
        <nav id="navigation">
            <a href="/" class="logotype">Culinarum</a>
            <form class="search-form" action="">
                <input class="search-input" type="search">
                <i class="fa fa-search"></i>
            </form>
            <a aria-label="mobile menu" class="nav-toggle">
                <span></span>
                <span></span>
                <span></span>
            </a>
            <ul class="menu-left">
                <#if s.known>
                        <li><a href="/favorites">Избранное</a></li>
                        <li><a href="/logout">Выйти</a></li>
                    <#else>
                        <li><a class="sign-in" href="#">Войти</a></li>
                        <li><a class="sign-up" href="#">Регистрация</a></li>
                </#if>
            </ul>
        </nav>
    </div>
</header>