cd /home/ec2-user/SageMaker
aws s3 cp s3://${function_bucket_name}-${aws_region}/fraud-detection-using-machine-learning/${function_version}/notebooks/sagemaker_fraud_detection.ipynb .
sed -i 's/fraud-detection-end-to-end-demo/${s3_bucket_name_1}/g' sagemaker_fraud_detection.ipynb