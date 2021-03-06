<div class="register-modal">
    <div class="register-modal-container">
        <ul class="register-switcher">
            <li><a href="#">Вход</a></li>
            <li><a href="#">Регистрация</a></li>
        </ul>
        <div id="signin-window">
            <form class="register-form" action="/login" method="post">
                <p class="fieldset">
                    <label class="register-image register-email" for="signin-email"></label>
                    <input class="register-input " required id="signin-email" name="username" type="email" placeholder="E-mail">
                    <span class="register-error-message">Error message here!</span>
                </p>
                <p class="fieldset">
                    <label class="register-image register-password" for="signin-password"></label>
                    <input class="register-input" required id="signin-password" name="password" type="text"  placeholder="Password">
                    <a href="#0" class="hide-password">Hide</a>
                    <span class="register-error-message">Error message here!</span>
                </p>
                <p class="fieldset">
                    <input type="checkbox" id="remember-me" name="remember-me" checked>
                    <label class="label-remember-me" for="remember-me">Запомнить меня</label>
                </p>
                <p class="fieldset">
                    <button class="register-input" type="submit">Войти</button>
                </p>
                <p class="register-forgot-message">
                    <a href="#0">Забыли пароль?</a>
                </p>
            </form>
        </div>
        <div id="signup-window">
            <form class="register-form" action="/registration" method="post">
                <p class="fieldset">
                    <label class="register-image register-username" for="signup-username"></label>
                    <input class="register-input " required id="signup-username" name="name" type="text" placeholder="Username">
                    <span class="register-error-message">Error message here!</span>
                </p>
                <p class="fieldset">
                    <label class="register-image register-email" for="signup-email"></label>
                    <input class="register-input " required id="signup-email" name="email" type="email" placeholder="E-mail">
                    <span class="register-error-message">Error message here!</span>
                </p>
                <p class="fieldset">
                    <label class="register-image register-password" for="signup-password"></label>
                    <input class="register-input " required id="signup-password" name="password" type="text"  placeholder="Password">
                    <a href="#0" class="hide-password">Hide</a>
                    <span class="register-error-message">Error message here!</span>
                </p>
                <p class="fieldset">
                    <input type="checkbox" checked id="accept-terms">
                    <label class="label-agree" for="accept-terms">Я согласен с <a class="register-terms" href="#">условиями</a></label>
                </p>
                <p class="fieldset">
                    <button class="register-input" type="submit">Зарегистрироваться</button>
                </p>
            </form>
        </div>
        <div id="register-reset-password">
            <p class="register-form-message">Забыли пароль? Введите ваш e-mail адрес. Вы получите ссылку для восстановления пароля.</p>
            <form class="register-form" action="/">
                <p class="fieldset">
                    <label class="register-image register-email" for="reset-email"></label>
                    <input class="register-input " id="reset-email" type="email" placeholder="E-mail">
                    <span class="register-error-message">Error message here!</span>
                </p>
                <p class="fieldset">
                    <input class="register-input" type="submit" value="Восстановить пароль">
                </p>
            </form>
            <p class="register-forgot-message"><a href="#0">Назад</a></p>
        </div>
        <a href="#" class="register-close">Закрыть</a>
    </div>
</div>