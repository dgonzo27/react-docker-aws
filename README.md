# react-docker-aws

watch the demo at [https://youtu.be/7yXmn14xxCE](https://youtu.be/7yXmn14xxCE)

## getting started (for intel based machines)
1. install node modules:

    ```sh
    npm install
    ```
    
2. build the docker container:

    ```sh
    docker build -t react-docker-aws:latest .
    ```

3. run the docker container:

    ```sh
    docker run -p 3000:80 react-docker-aws:latest
    ```

4. navigate to:

    ```sh
    http://localhost:3000
    ```

5. deploy:

    ```sh
    bash scripts/intel-deploy.sh
    ```

## getting started (for m1 macs or arm based machines)
1. install node modules:

    ```sh
    npm install
    ```
    
2. build the docker container:

    ```sh
    docker build -f Dockerfile.arm --platform=linux/amd64 -t react-docker-aws:latest .
    ```

3. run the docker container

    ```sh
    docker run -p 3000:80 react-docker-aws:latest
    ```

4. navigate to:

    ```sh
    http://localhost:3000
    ```

5. deploy:

    ```sh
    bash scripts/arm-deploy.sh
    ```
