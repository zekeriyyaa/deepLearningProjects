# Deep Learning
There are some project that I made below in the files. Each files represent different algorithm and models of Deep Learning. You can see their subject explanation below: 
1. faster_rcnn-object_detection
<br>There are many step to create own train dataset to object detection. 
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
     <br><br>** https://www.youtube.com/watch?v=bYqvx_DM45U ** 
     <br>** https://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/ **
     <br>Look this urls for how generate above steps.
2. resnet-object_detection-colab
   - asd
3. tensorflow-pill_detection-colab
   - asdas
4. yolo-video-object_detection
   - asdad
