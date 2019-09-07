## Faster_Rcnn-Object_Detection
<br>In this project, we try to detect eraser from given image and show it in square with using [faster_rcnn_inception_v2_coco](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) dataset. There are many step to create own train dataset to object detection.
**<br>You can visit [here](http://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/) for original text version of tutorial.**<br>
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
   - You will replace the following code in **generate_tfrecord.py**
   ```
   # TO-DO replace this with label map
   def class_text_to_int(row_label):
    if row_label == 'eraser':
        return 1
    else:
        None
    ```
   - Execute `generate_tfrecord.py` file on command prompt and generate record file into your eraserImg folder. You have to give directories as argument when execute generate_tfrecord.py file. You can look in generate_tfrecord.py file for how can you give arguments.
   ``` 
   Usage:
    Create train data:
      python generate_tfrecord.py --csv_input=CSGO_images\train_labels.csv --image_dir=CSGO_images\train --output_path=CSGO_images\train.record
    Create test data:
      python generate_tfrecord.py --csv_input=CSGO_images\test_labels.csv --image_dir=CSGO_images\test --output_path=CSGO_images\test.record
   ```
5. Create **labelmap.pbtxt** file and configure it.
   - Use a text editor to create new file and save it as `labelmap.pbtxt` in the eraserTraining folder. (Make sure the file type is .pbtxt)
   - Replace it with given format that include id and name of item.
   ```
   item {
   id: 1
   name: 'eraser'
   }
   ```
6. Setup a .config file for the model of choice (you could train your own from scratch, but we'll be using transfer learning).
   - Copy the **faster_rcnn_inception_v2_coco.config** file into eraserTrainig folder. We need the several changes in this config file, mainly changing the number of classes, examples and adding the file paths to the training data.
     - Line 10. Change num_classes to the number of different objects you want the classifier to detect. For my CSGO object detection it would be:
       num_classes : 4
     - Line 107. Change fine_tune_checkpoint to:
       fine_tune_checkpoint : "faster_rcnn_inception_v2_coco_2018_01_28/model.ckpt"
     - Lines 122 and 124. In the train_input_reader section, change input_path and label_map_path to:
       input_path: "eraserImg/train.record"
       label_map_path: "eraserTrainig/labelmap.pbtxt"
     - Line 128. Change num_examples to the number of images you have in the eraserImg\test directory. I have 4 images,          so I change it to:
       num_examples: 4
     - Lines 136 and 138. In the eval_input_reader section, change input_path and label_map_path to:
       input_path: "eraserImg/test.record"
       label_map_path: "eraserTraining/labelmap.pbtxt"
   
7. Train our model.
   - Execute given command on command prompt.
   ```
   python train.py --logtostderr --train_dir=eraserTraining/ --    pipeline_config_path=eraserTraining/faster_rcnn_inception_v2_coco.config

   ```
8. Export inference graph from new trained model.
9. Detect custom objects.
     <br>** https://www.youtube.com/watch?v=bYqvx_DM45U ** 
     <br>** https://pylessons.com/Tensorflow-object-detection-step-by-step-custom-object-detection/ **
     <br>Look this urls for how generate above steps.
