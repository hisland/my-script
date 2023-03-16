#!/bin/bash

ctr i import ./images-middleware/sonatype-nexus3_3.40.1.tar

ctr i import ./images-middleware/redis_6.2.7.tar

ctr i import ./images-middleware/rabbitmq_3.9.20-management-alpine.tar

ctr i import ./images-middleware/minio-minio_RELEASE.2022-06-30T20-58-09Z.tar
ctr i import ./images-middleware/minio-mc_RELEASE.2022-06-26T18-51-48Z.tar

ctr i import ./images-middleware/nacos-server_v2.1.0-slim.tar
ctr i import ./images-middleware/nacos-mysql_8.0.16.tar
