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
```bash
#### destroy
```
npx cdk destroy
npx cdk destroy --force
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
