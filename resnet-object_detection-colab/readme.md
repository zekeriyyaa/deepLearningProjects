# Resnet-Object Detection with Google Colab
  <br>Here, we try to detect custom object from given image with using [faster_rcnn_resnet101_coco](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) dataset on [Google Colab](https://colab.research.google.com/notebooks/welcome.ipynb#recent=true). We use **DetectionFromImage.ipynb** file for this. There are some case to do like explained below:
  - Firstly, you should download here [faster_rcnn_resnet101_coco](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) dataset from given url. Locate **resnet50_coco_best_v2.0.1.h5** file in current folder.
  - Connect drive with colab. You can look this [url](https://medium.com/deep-learning-turkiye/google-colab-ile-ücretsiz-gpu-kullanımı-30fdb7dd822e) for how to connect them each other. Or follow given code:
  ```
!apt-get install -y -qq software-properties-common python-software-properties module-init-tools
!add-apt-repository -y ppa:alessandro-strada/ppa 2>&1 > /dev/null
!apt-get update -qq 2>&1 > /dev/null
!apt-get -y install -qq google-drive-ocamlfuse fuse
from google.colab import auth
auth.authenticate_user()
from oauth2client.client import GoogleCredentials
creds = GoogleCredentials.get_application_default()
import getpass
!google-drive-ocamlfuse -headless -id={creds.client_id} -secret={creds.client_secret} < /dev/null 2>&1 | grep URL
vcode = getpass.getpass()
!echo {vcode} | google-drive-ocamlfuse -headless -id={creds.client_id} -secret={creds.client_secret}
  ```
  - Create drive folder on your Colab server and connect to drive.
  ```
!mkdir -p drive
!google-drive-ocamlfuse drive
import sys
sys.path.insert(0, 'drive')
```
  - Install some required library and file on your colab. 
  ```
!pip install keras
!pip install tensorflow
!pip install numpy
!pip install scipy
!pip install opencv-python
!pip install pillow
!pip install matplotlib
!pip install h5py
```
``` 
pip install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.1/imageai-2.0.1-py3-none-any.whl
```
  - Fix your **DetectionFromImage** file with your path. Specify your test object and path that image saved.
```
from imageai.Detection import ObjectDetection
import os

execution_path = os.getcwd()

detector = ObjectDetection()
detector.setModelTypeAsRetinaNet()
detector.setModelPath( "PATH_TO_RESNET50_DATASET")
#SAMPLE_PATH_TO_RESNET50_DATESET=drive/resnet50_coco_best_v2.0.1.h5
detector.loadModel()
#custom_objects = detector.CustomObjects(person=True, car=True)
detections = detector.detectCustomObjectsFromImage(input_image="PATH_TO_INPUT_IMAGE",
                                                   output_image_path="PATH_TO_OUTPUT_IMAGE", 
                                                   minimum_percentage_probability=65)

#SAMPLE_PATH_TO_INPUT_IMAGE=drive/test1.jpg
#SAMPLE_PATH_TO_OUTUT_IMAGE=drive/test1_detected.png
#custom_objects=custom_objects,
for eachObject in detections:
   print(eachObject["name"] + " : " + eachObject["percentage_probability"] )
   print("--------------------------------")
```
