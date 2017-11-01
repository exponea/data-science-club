import pickle 
from flask import Flask, jsonify, request

app = Flask(__name__)

#with open('model/cls.pkl', 'r') as f:
#    classifier = pickle.load(f)

@app.route('/classify', methods=['GET', 'POST'])
def classify():
    '''
    Classifies incoming message which includes a JSON payload with data
    '''
    if request.method == 'GET': # only for quick testing
        payload = {} #'data':'hi'}
    else:
        payload = request.get_json()

    data = payload.get('data', None)
    if data is not None:
        preprocessed_data = data
        prediction = preprocessed_data
        response = jsonify({'prediction': prediction})
    else:
        response = jsonify({'message': 'Request has no '+
        "'data'"})
        response.status_code = 400
    return response

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000, debug=True)
