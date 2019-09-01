# Deep Learning
#### There are some project that I made below in the files. Each files represent different algorithm and models of Deep Learning. You can see their subject explanation below: 
1. faster_rcnn-object_detection
<br>In this project, we try to detect eraser from given image and show it in square with using [faster_rcnn_inception_v2_coco](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) dataset. There are many step to create own train dataset to object detection. 
     #### Original text version of tutorial you can visit [here](http://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/).
     - Collect images that contain your object - The bare ideally more like 1000 or more, but the more images you have, the more tedious step 2 will be. 
     - Labeling each images with Label Image app
     <br>[LabelImg GitHub link](https://github.com/tzutalin/labelImg) 
     <br>[LabelImg download link](https://www.dropbox.com/s/tq7zfrcwl44vxan/windows_v1.6.0.zip?dl=1)
     - Split this data into train/test samples. Training data should be around 80% and testing around 20%.
     - Generate TF Records from these splits.
     - Setup a .config file for the model of choice (you could train your own from scratch, but we'll be using transfer learning).
     - Train our model.
     - Export inference graph from new trained model.
     - Detect custom objects.
     <br>** https://www.youtube.com/watch?v=bYqvx_DM45U ** 
     <br>** https://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/ **
     <br>Look this urls for how generate above steps.
2. resnet-object_detection-colab
<br>Here, we try to detect custom object from given image with using [faster_rcnn_resnet101_coco](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) dataset on [Google Colab](https://colab.research.google.com/notebooks/welcome.ipynb#recent=true). To can do this we use **DetectionFromImage.ipynb** file. There are some case to do for can execute it that explain below:
     - Connect drive with colab. You can look this [url](https://medium.com/deep-learning-turkiye/google-colab-ile-ücretsiz-gpu-kullanımı-30fdb7dd822e) for how to connect them each other. 
     - Install some required library and file on your colab. 
     - Fix your **DetectionFromImage** file with your path.
     - Specify your test object and path that image saved.
3. tensorflow-pill_detection-colab

4. yolo-video-object_detection
<br>Here, we try to detect custom object from given image with using [YOLO](https://www.kaggle.com/rmoharir8396/yolo-h5-file#yolo.h5) dataset on [Google Colab](https://colab.research.google.com/notebooks/welcome.ipynb#recent=true). To can do this we use **FirstVideoDetection.ipynb** file. There are some case to do for can execute it that explain below:
     - Connect drive with colab. You can look this given url for how to connect them each other. 
       - [Connection Colab with Drive](https://medium.com/deep-learning-turkiye/google-colab-ile-ücretsiz-gpu-kullanımı-30fdb7dd822e)
     - Install some required library and file on your colab. 
     - Fix your **FirstVideoDetection** file with your path.
     - Specify your test object and path that image saved.
