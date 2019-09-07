dowload dataset
# Object Detection With Yolo From video
<br>Here, we try to detect custom object from given image with using [YOLOv3](https://www.kaggle.com/rmoharir8396/yolo-h5-file#yolo.h5) dataset on [Google Colab](https://colab.research.google.com/notebooks/welcome.ipynb#recent=true). To can do this we use **FirstVideoDetection.ipynb** file. There are some case to do for can execute it that explain below:
  - Firstly, you should download here [faster_rcnn_resnet101_coco](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) dataset from given url. Locate **YOLOv3.h5** file in current folder.
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
!pip install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.2/imageai-2.0.2-py3-none-any.whl
```
  - Fix your **DetectionFromImage** file with your path. Specify your test object and path that image saved.
```
from imageai.Detection import VideoObjectDetection

#execution_path = "PATH_TO_YOLOv3_FOLDER"

detector = VideoObjectDetection()
detector.setModelTypeAsYOLOv3()
detector.setModelPath( "PATH_TO_YOLOv3_MODEL")
detector.loadModel()

#SAMPLE_PATH_TO_YOLOv3_FOLDER=drive/YOLOv3/
#SAMPLE_PATH_TO_YOLOv3_MODEL=drive/YOLOv3/yolo.h5
video_path = detector.detectObjectsFromVideo(input_file_path="PATH_TO_INPUT_VIDEO",
                                output_file_path="PATH_TO_OUTPUT_VIDEO"
                                , frames_per_second=29, log_progress=True)


#SAMPLE_PATH_TO_INPUT_VIDEO=drive/sampleVideo.mp4
#SAMPLE_PATH_TO_OUTPUT_VIDEO=drive/sampleVideo_detected_1

print(video_path)

for eachObject in video_path:
    print(eachObject["name"] , " : " , eachObject["percentage_probability"] )
```
