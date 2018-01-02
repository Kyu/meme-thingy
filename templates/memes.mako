<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">

    <meta name="keywords" content=" flax, flaxgame, meme, meme generator, generator, memes ">
    <meta name="description" content="Meme generator thingy">
    <meta name="referrer" content="always">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta property="og:title" content="Meme generator thingy">
    <meta property="og:site_name" content="Meme gen">
    <meta property="og:description" content="Meme generator thingy">
    <meta property="og:type" content="game">
    <meta property="og:image" content="#####">

    <meta property="twitter:site" content="memegen">
    <meta property="twitter:card" content="summary">
    <meta property="twitter:title" content="Meme generator thingy">


    <link rel="canonical" href="${url_for('.home')}">
    <!-- TODO Make it look decent -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <link rel="shortcut icon" href="${url_for('static', filename='favicon.png')}">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-102770740-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-102770740-1');
    </script>

    <title>Meme generator thingy</title>
</head>

<body>

<div id="clapper">
    <h2>Emoji repeating meme </h2>
    <div id="clapper_form">
        <h6><small>e.g Don't 👏 say 👏 you 👏 have 👏 an 👏 high 👏 iq 👏 if 👏 you 👏 don't 👏 watch 👏 Rick 👏 and 👏 Morty</small></h6>
        <form class="form" action="${url_for('.clapper_generator')}" method="get">
            <input type="text" name="text" placeholder="Enter text here"/>
            <input type="text" name="separator" placeholder="Enter text separator here"/>
            <button class="btn btn-submit" type="submit">Submit!</button>
        </form>
    </div>
    % for message in get_flashed_messages(category_filter=["clapper"]):
        <p>${message}</p>
    % endfor
</div>


<div id="spongebob_mock">
    <h2>Spongebob Mock</h2>
    <img src="${url_for('static', filename='spongebob_mock.jpg')}" alt="Cat daddy" width="10%">
    <div id="spongebob_mock_form">
        <h6><small>e.g tHeey aRe noTt clEAver, iT juST bAad.</small></h6>
        <form class="form" action="${url_for('.spongebob_mock')}" method="get">
            <input id="text" type="text" name="text" placeholder="Enter text here"/>
            <button class="btn btn-submit" type="submit">Submit!</button>
        </form>
    </div>
    % for mock in get_flashed_messages(category_filter=["mock"]):
        <p>${mock}</p>
    % endfor
</div>

</body>

</html>