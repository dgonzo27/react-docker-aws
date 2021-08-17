# react-docker-aws

watch the demo at [https://youtu.be/7yXmn14xxCE](https://youtu.be/7yXmn14xxCE)

## getting started (for intel based machines)
1. build the docker container:

    ```sh
    docker build -t react-docker-aws:latest .
    ```

2. run the docker container:

    ```sh
    docker run -p 3000:80 react-docker-aws:latest
    ```

3. navigate to:

    ```sh
    http://localhost:3000
    ```

4. deploy:

    ```sh
    bash scripts/intel-deploy.sh
    ```

## getting started (for m1 macs or arm based machines)
1. build the docker container:

    ```sh
    docker build -f Dockerfile.arm -t react-docker-aws:latest .
    ```

2. run the docker container

    ```sh
    docker run -p 3000:80 react-docker-aws:latest
    ```

3. navigate to:

    ```sh
    http://localhost:3000
    ```

4. deploy:

    ```sh
    bash scripts/arm-deploy.sh
    ```
