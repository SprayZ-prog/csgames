from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/api/v1/devices', methods=['POST'])
def postDevices():
    macAddress= request.form.get('macAddress')
    model= request.form.get('model')
    macAddress= request.form.get('macAddress')
    macAddress= request.form.get('macAddress')
    macAddress= request.form.get('macAddress')
    macAddress= request.form.get('macAddress')
