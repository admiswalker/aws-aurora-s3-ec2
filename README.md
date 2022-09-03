# aws-aurora-s3-ec2

## usage
### run docker
```bash
./docker/run.sh
```
### usual commands
#### Static analysis
```
npx cdk synth
```
#### install npm package
- install by package.json
  ```
  npx npm i
  ```
- install by package-lock.json
  ```
  npx npm ci
  ```
- install by <package-name>
  ```
  npx npm i <package-name>
  ```
  example:
  ```
  npx npm i @aws-cdk/core
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
