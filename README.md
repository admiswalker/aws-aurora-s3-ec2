# aws-aurora-s3-ec2

## usage
### run docker
```bash
./docker/run.sh
```
### usual commands
#### Static analysis
```bash
npx cdk synth
```
#### install npm package
- install by package.json
  ```bash
  npx npm i
  ```
- install by package-lock.json
  ```bash
  npx npm ci
  ```
- install by <package-name>
  ```bash
  npx npm i <package-name>
  ```
  example:
  ```bash
  npx npm i @aws-cdk/core
  ```
#### bootstrap
```bash
npx cdk bootstrap
```
#### deploy
```bash
npx cdk deploy all
npx cdk deploy all --require-approval never
```
#### destroy
```bash
npx cdk destroy
npx cdk destroy --force
```
### ssh to EC2
ssh port forwarding
```bash
EC2_INSTANCE_ID=$(aws ec2 describe-instances \
    --filters "Name=tag:Name,Values=AwsSsmEc2MysqlStack/ec2_ssm" \
    --query "Reservations[].Instances[?State.Name=='running'].InstanceId[]" \
    --output text)
RDB_ENDPOINT=$(aws rds describe-db-instances | jq '.DBInstances[] | [.Endpoint, .TagList, .Key == "AwsSsmEc2MysqlStack" ]' | grep "Address" | grep --ignore-case "AwsSsmEc2MysqlStack" | cut -d '"' -f 4)
ssh -i ~/.ssh/ec2/id_ed25519 admis@$EC2_INSTANCE_ID -L 3306:$RDB_ENDPOINT:3306
```

## init
### build docker
```bash
./docker/build.sh
```

### init cdk project
```bash
./docker/run.sh
```
```bash
PRJ_NAME=PROJECT_NAME \
&& mkdir $PRJ_NAME && cd $PRJ_NAME \
&& npx cdk init --language typescript \
&& touch ../.gitignoer \
&& cat .gitignore >> ../.gitignore \
&& rm .gitignore \
&& rm README.md \
&& mv * .[^\.]* .. \
&& cd .. \
&& rm -rf $PRJ_NAME
```
