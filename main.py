from flask import (
    Flask,
    jsonify,
    request,
    flash,
    redirect,
    url_for
)

from flask_mako import (
    MakoTemplates,
    render_template
)

import random

app = Flask(__name__, static_url_path='/memes/static')
mako = MakoTemplates(app)


@app.route('/memes')
def home():
    return render_template('memes.mako', name='mako')


@app.route('/memes/clapper')
def clapper_generator():
    use_json = False
    if request.args.get('json'):
        use_json = True

    text = request.args.get('text')
    separator = request.args.get('separator')
    if text and separator:
        result = text.replace(" ", ' {} '.format(separator))
    else:
        result = "Either text or separator are not defined!"

    if use_json:
        return jsonify(result=result)
    else:
        flash(result, 'clapper')
        return redirect(url_for('hello_world'))


@app.route('/memes/spongebob')
def spongebob_mock():
    use_json = False
    if request.args.get('json'):
        use_json = True

    text = request.args.get('text')
    if text:
        result = ''  # TODO Word misspelling http://code.activestate.com/recipes/440526-misspell-words-to-avoid-detection/
        for i in text.lower():
            if random.choice([0, 1]):
                result += i.upper()
            else:
                result += i
    else:
        result = "No text inserted!"

    if use_json:
        return jsonify(result=result)
    else:
        flash(result, 'mock')
        return redirect(url_for('home'))


if __name__ == '__main__':
    app.config['TEMPLATES_AUTO_RELOAD'] = True
    app.config['SECRET_KEY'] = 'waga454'
    # 👏
    app.run()
