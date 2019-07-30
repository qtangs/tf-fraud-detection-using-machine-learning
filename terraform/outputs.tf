output "basic_notebook_instance_id" {
  value = "${aws_sagemaker_notebook_instance.basic.id}"
}

output "firehose_delivery_stream_arn" {
  description = "Firehose Delivery Stream ARN"
  value       = "${aws_kinesis_firehose_delivery_stream.fraud_detection_firehose_stream.arn}"
}

output "firehoseDeliveryRoleArn" {
  description = "Firehose Delivery Role ARN"
  value       = "${aws_iam_role.fraud_detection_firehose_role.arn}"
}
