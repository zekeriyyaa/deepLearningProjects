## Faster_Rcnn-Object_Detection
<br>In this project, we try to detect eraser from given image and show it in square with using [faster_rcnn_inception_v2_coco](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) dataset. There are many step to create own train dataset to object detection.
#### <br>Original text version of tutorial you can visit [here](http://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/).<br>
1. Collect images that contain your object the bare ideally more like 1000 or more, but the more images you have, the more tedious step 2 will be. In this project, we will use 15 images for training and 4 images for test. Actually, we should use more images but here, we just try execute these process to show result correctly.
2. Labeling each images with Label Image app.
   - Dowload and install LabelImg that given addresses.
     <br>[LabelImg GitHub link](https://github.com/tzutalin/labelImg) 
     <br>[LabelImg download link](https://www.dropbox.com/s/tq7zfrcwl44vxan/windows_v1.6.0.zip?dl=1)  
   - Start to label all images one by one. So, LabelImg created .xml files in your image's directory.
3. Split this data into train/test samples. Training data should be around 80% and testing around 20%.
4. Generate TF Records from these splits.
   - You have to fix your `xml_to_csv.py` file and change directory which is include your images.
   - Execute `xml_to_csv.py` file on command prompt for convert .xml files to .csv file. It creates train_labels.csv and test_labels.csv file into your eraserImg folder. 
   - Use `generate_tfrecord.py` and generate record file into your eraserImg folder. You have to give directories as argument when run generate_tfrecord.py file. You look in generate_tfrecord.py file for how can you give arguments.
   ``` 
   Usage:
    Create train data:
      python generate_tfrecord.py --csv_input=CSGO_images\train_labels.csv --image_dir=CSGO_images\train --output_path=CSGO_images\train.record
    Create test data:
      python generate_tfrecord.py --csv_input=CSGO_images\test_labels.csv --image_dir=CSGO_images\test --output_path=CSGO_images\test.record
   ```
5. Setup a .config file for the model of choice (you could train your own from scratch, but we'll be using transfer learning).
6. Train our model.
7. Export inference graph from new trained model.
8. Detect custom objects.
     <br>** https://www.youtube.com/watch?v=bYqvx_DM45U ** 
     <br>** https://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/ **
     <br>Look this urls for how generate above steps.
