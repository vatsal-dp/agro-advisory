from flask import Flask, request, jsonify
import pickle

app = Flask(__name__)

# Load the trained model from the pickle file
with open('/Users/vatsalpatel/Desktop/fm.pkl', 'rb') as f:
    model = pickle.load(f)

# Endpoint to handle prediction requests
@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json()
    prediction = model.predict(data)
    return jsonify(prediction.tolist())

if __name__ == '__main__':
    app.run(debug=True)