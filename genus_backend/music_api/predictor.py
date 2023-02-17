import joblib
import cv2 as cv
import os
from pathlib import Path
import keras
import pickle
import numpy as np

from .metadata_extract import getmetadata
BASE_DIR = Path(__file__).resolve().parent.parent.parent
class Cnn:
    def __init__(self) -> None:
        self.labels = {0:"Ambasel", 1:"Anchihoye", 2:"Bati",3:"Tizita"}
        self.classify = joblib.load("Models/model.joblib",'r')

        print("_______________________>________________________")

    
    def make_prediction(self,song):
        music_info = getmetadata(song)
        prediction = self.classify.predict(music_info)
        return self.labels[int(prediction[0])]
    
        