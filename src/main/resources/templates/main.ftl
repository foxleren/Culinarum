<#import "security.ftl" as s>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
      
    <link rel="stylesheet" href="styles\css\basic.css">
    <link rel="stylesheet" href="styles\css\header.css">
    <link rel="stylesheet" href="styles\css\search.css">
    <link rel="stylesheet" href="styles\css\register.css">
    <link rel="stylesheet" href="styles\css\contentMain.css">
    <link rel="stylesheet" href="styles\css\tags.css">
    <link rel="stylesheet" href="styles\css\stickers.css">
    <link rel="stylesheet" href="styles\css\barier.css">
    <link rel="stylesheet" href="styles\css\message.css">
    <link rel="stylesheet" href="styles\css\footer.css">
    <link rel="stylesheet" href="styles\css\adoptationMain.css">
    <link rel="icon" href="styles\svg\favicon.svg" type="image/png">
    <title>Culinarum</title>
</head>
<body>

<#include "navbar.ftl">
<#include "modal.ftl">
<div class="content-box">
    <div class="main-page">
        <div class="filtr-box">
            <#include "filter.ftl">
            <#if s.known>
                <div class="message-add">
                    <div class="message-add-content">
                        <#if !s.isAdmin><div class="message-add-title">Есть идеи для рецепта?</div></#if>
                        <a class="add-recipe" href="/new"><#if s.isAdmin>Добавить<#else>Предложить</#if> рецепт</a>
                    </div>
                </div>
            </#if>
        </div>
        <div class="list">
            <#if page.content?size == 0>
                <div class="message">
                    <div class="message-image">
                        <div class="message-image-content"></div>
                    </div>
                    <div class="message-content">
                        <div class="message-title">Сожалеем, но...</div>
                        <div class="message-text">Запрос не дал результатов</div>
                        <a class="go-back" href="/">Вернуться</a>
                    </div>
                </div>
            </#if>
            <#list page.content as recipe>
                <div class="recipe-box" id="${recipe.id}">
                    <div class="recipe-first-part">
                        <#if s.isAdmin><a class="sticker-edit" href="/edit?id=${recipe.id}"></a></#if>
                        <div class="dish-name">
                            <div class="dish-name-content">${recipe.name}</div>
                            <div class="name-span"></div>
                        </div>
                        <div class="dish-photo">
                            <img src="https://res.cloudinary.com/miragost/image/upload/v1606145231/culinarum/${recipe.image}">
                        </div>
                        <div class="recipe-tags">
                            <div class="tag-content">
                                <a class="tag disabled" href="/">${recipe.cuisine}</a>
                            </div>
                            <div class="tag-content">
                                <a class="tag" href="/?typeCheck=${recipe.type}">${recipe.type}</a>
                            </div>
                        </div>
                    </div>
                    <div class="recipe-second-part">
                        <div class="recipe-description">
                            <div class="description-name">
                                <div class="description-name-content">Краткий рецепт</div>
                                <div class="name-span"></div>
                            </div>
                            <div class="description-text">${(recipe.recipe?length>201)?
                                then(recipe.recipe?substring(0, 200)+"...", recipe.recipe)}</div>
                        </div>
                        <div class="recipe-characterisctics">
                            <div class="recipe-time">
                                <div class="calories-name"></div>
                                <div class="time-text">${recipe.minutes} мин</div>
                            </div>
                            <div class="recipe-calories">
                                <div class="calories-name"></div>
                                <div class="calories-text">${recipe.calories} ккал</div>
                            </div>
                        </div>
                        <div class="recipe-buttons">
                            <div class="sticker-container">
                                    <#if s.known && recipe.getUsers()?seq_contains(s.user)>
                                        <div class="sticker-delete">
                                            <a class="sticker-delete-content" href="/remove/${recipe.id}"></a>
                                        </div>
                                    <#else>
                                        <div class="sticker-plus">
                                            <a class="sticker-plus-content <#if !s.known>disabled</#if>"
                                               href="/add/<#if s.known>${recipe.id}</#if>"></a>
                                        </div>
                                    </#if>
                            </div>
                            <div class="sticker-container">
                                <div class="sticker-more">
                                    <a class="sticker-more-content" href="/${recipe.id}"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </#list>

            <#if (page.totalPages > 1)>
                <div class="button-show">
                    <div class="sticker-container-show">
                        <div class="sticker-show">
                            <a class="sticker-begin-content <#if page.number == 0>disabled</#if>" href="/${url}page=0"></a>
                        </div>
                    </div>
                    <div class="sticker-container-show">
                        <div class="sticker-show">
                            <a class="sticker-back-content <#if page.number == 0>disabled</#if>" href="/${url}page=${page.number-1}"></a>
                        </div>
                    </div>
                    <div class="sticker-container-show">
                        <div class="sticker-show">
                            <a class="sticker-active-content disabled" href="">${page.number+1}</a>
                        </div>
                    </div>
                    <div class="sticker-container-show">
                        <div class="sticker-show">
                            <a class="sticker-next-content <#if page.number == page.totalPages-1>disabled</#if>" href="/${url}page=${page.number+1}"></a>
                        </div>
                    </div>
                    <div class="sticker-container-show">
                        <div class="sticker-show">
                            <a class="sticker-end-content <#if page.number == page.totalPages-1>disabled</#if>" href="/${url}page=${page.totalPages-1}"></a>
                        </div>
                    </div>
                </div>
                <div class="message-print">
                    <div class="message-print-image">
                        <div class="message-print-image-content"></div>
                    </div>
                    <div class="message-print-content">
                        <a class="print-all" onclick="CallPrint()">Печать страницы</a>
                    </div>
                </div>
            </#if>
        </div>
    </div>
</div>

<div id="print-content" hidden>
    <#list page.content as recipe>
        <h3>${recipe.name} (# ${recipe.id})</h3>
        <p><b>Вид блюда</b>: ${recipe.type}</p>
        <p><b>Кухня</b>: ${recipe.cuisine}</p>
        <p><b>Время приготовления</b>: ${recipe.minutes} мин</p>
        <p><b>Калорийность</b>: ${recipe.calories} ккал</p>
        <p><b>Ингредиенты</b>: ${recipe.ingredients}</p>
        <p><b>Рецепт</b>: ${recipe.recipe}</p>
        <br><br>
    </#list>
</div>

<#include "footer.ftl">

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="js\script.js"></script>
<script src="js\modal.js"></script>
<script src="js\print.js"></script>
</body>
</html>