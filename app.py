from flask import Flask
import tensorflow as tf
import numpy as np
import pickle
import cv2
from tensorflow.keras.preprocessing.image import img_to_array
from sklearn.preprocessing import LabelBinarizer
from tensorflow.keras.models import Sequential
import sklearn
import tensorflow.keras
from tensorflow.keras.models import load_model


app=Flask(__name__)

@app.route('/')
def index():
    defaultimagesize = tuple((256, 256))
    def convertimagetoarray(imagedir):
        try:
            image = cv2.imread(imagedir) 
            if image is not None:
                image = cv2.resize(image, defaultimagesize) 
                return img_to_array(image)
            else:
                return np.array([])
        except Exception as e:
            print(f"Error : {e}")
            return None
    model=load_model('cnn.h5')
    labelencoder = open(r'label_transform.pkl', 'rb')
    labeltransformer = pickle.load(labelencoder)
    imgpath="00fa99e8-2605-4d72-be69-98277587d84b___Com.G_SpM_FL 1453.JPG"
    imar = convertimagetoarray(imgpath)
    npimagelist = np.array([imar], dtype=np.float16) / 225.0
    pred = model.predict(npimagelist)
    res=str(labeltransformer.inverse_transform(pred))
    return res
if __name__=='__main__':
    app.run(debug=True)
