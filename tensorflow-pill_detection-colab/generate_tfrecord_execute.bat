
python generate_tfrecord.py --csv_input=eraserImg/train_labels.csv --image_dir=eraserImg/train --output_path=eraserImg/train.record
python generate_tfrecord.py --csv_input=eraserImg/test_labels.csv  --image_dir=eraserImg/test --output_path=eraserImg/test.record

