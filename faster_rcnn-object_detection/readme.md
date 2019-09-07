## Faster_Rcnn-Object_Detection
<br>In this project, we try to detect eraser from given image and show it in square with using [faster_rcnn_inception_v2_coco](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) dataset. There are many step to create own train dataset to object detection.
#### <br>Original text version of tutorial you can visit [here](http://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/).<br>
1. Collect images that contain your object the bare ideally more like 1000 or more, but the more images you have, the more tedious step 2 will be. In this project, we will use 15 images for training and 4 images for test. Actually, we should use more images but here, we just try execute these process to show result correctly.
2. Labeling each images with Label Image app.
   - Dowload and install LabelImg that given addresses.
   - Start to label all images one by one. So, LabelImg created .xml files in your image's directory `\test` and `\train`.
     <br>[LabelImg GitHub link](https://github.com/tzutalin/labelImg) 
     <br>[LabelImg download link](https://www.dropbox.com/s/tq7zfrcwl44vxan/windows_v1.6.0.zip?dl=1)
3. Split this data into train/test samples. Training data should be around 80% and testing around 20%.
4. Generate TF Records from these splits.
5. Setup a .config file for the model of choice (you could train your own from scratch, but we'll be using transfer learning).
6. Train our model.
7. Export inference graph from new trained model.
8. Detect custom objects.
     <br>** https://www.youtube.com/watch?v=bYqvx_DM45U ** 
     <br>** https://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/ **
     <br>Look this urls for how generate above steps.
