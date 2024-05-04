import numpy as np
from flask import Flask, request, render_template
import pickle


app = Flask(__name__)


model = pickle.load(open('model.pkl', 'rb'))

@app.route('/')
def home():
    return render_template('map_wms_wfs_query.html')

@app.route('/predict',methods=['POST'])
def predict():

    int_features = [float(x) for x in request.form.values()] #Convert string inputs to float.
    features = [np.array(int_features)]  #Convert to the form [[a, b]] for input to the model
    prediction = model.predict(features)  # features Must be in the form [[a, b]]

    output = prediction[0]

    crop_map = {
        0: 'Apple',
        1: 'Banana',
        2: 'Blackgram',
        3: 'Chickpea',
        4: 'Coconut',
        5: 'Coffee',
        6: 'Cotton',
        7: 'Grapes',
        8: 'Jute',
        9: 'Kidneybeans',
        10: 'Lentil',
        11: 'Maize',
        12: 'Mango',
        13: 'Mothbeans',
        14: 'Mungbean',
        15: 'Muskmelon',
        16: 'Orange',
        17: 'Papaya',
        18: 'Pigeonpeas',
        19: 'Pomegranate',
        20: 'Rice',
        21: 'Watermelon'
    }

    output_crop = crop_map[output]
    

    return render_template('map_wms_wfs_query.html', prediction_text='{}'.format(output_crop))


if __name__ == "__main__":
    app.run()