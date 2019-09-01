There are many step to create own train dataset to object detection. 
1.Collect at least 500 images that contain your object - The bare minimum would be about 100, ideally more like 1000 or more, but, the more images you have, the more tedious step 2 will be.
2.Split this data into train/test samples. Training data should be around 80% and testing around 20%.
3.Generate TF Records from these splits.
4.Setup a .config file for the model of choice (you could train your own from scratch, but we'll be using transfer learning).
5.Train our model.
6.Export inference graph from new trained model.
7.Detect custom objects in real time.


** https://www.youtube.com/watch?v=bYqvx_DM45U ** 
look this url for how generate above steps.