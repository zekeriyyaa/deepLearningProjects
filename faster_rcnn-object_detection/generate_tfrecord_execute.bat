
python generate_tfrecord.py --csv_input=eraseImg/train_labels.csv --image_dir=eraseImg/train --output_path=train.record
python generate_tfrecord.py --csv_input=eraseImg/test_labels.csv  --image_dir=eraseImg/test --output_path=test.record

