from urllib import request

from flask import Flask, render_template, request

import sqlite3
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/quem-somos')
def quem_somos():
    return render_template('quem_somos.html')

@app.route('/cadastro')
def cadastro():
    return render_template('cadastro.html')


@app.route('/quero-doar')
def quero_doar():
    return render_template('quero_doar.html')

@app.route('/quero-receber')
def quero_receber():
    return render_template('quero_receber.html')

    roupas_infantil = request.form.get('roupa_infantil')
    roupas_adulto = request.form.get('roupa_adulto')
    alimentos = request.form.get('alimentos')
    moveis = request.form.get('moveis')
    medicamentos = request.form.get('medicamentos')
    produtos_gerais = request.form.get('produtos_gerais')


    return render_template('quero-receber.html')

@app.route('/nossos-contatos')
def nossos_contatos():
    return render_template('nossos_contatos.html')

if __name__ == '__main__':
    app.run(debug=True)
