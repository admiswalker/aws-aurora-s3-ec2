#!/usr/bin/env node
import 'source-map-support/register';
import * as cdk from 'aws-cdk-lib';
import { AwsSsmEc2MysqlStack } from '../lib/aws-aurora-s3-ec2-stack';

const app = new cdk.App();
new AwsSsmEc2MysqlStack(app, 'AwsSsmEc2MysqlStack', {
});
