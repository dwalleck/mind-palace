$env:FLASK_APP = "./mind_palace/index.py"
$activate = "$(pipenv --venv)\Scripts\activate"
Invoke-Expression $activate
flask run -h 0.0.0.0