# Usage

```bash
docker run -it \
  -e ACCESS_KEY=<access_key> \
  -e SECRET_KEY=<secret_key> \
  -e REGION=<region> \
  -e ENDPOINT=<endpoint> \
  gejunqiang/s3cmd:latest bash

bash-4.4# s3 ls
2020-05-14 08:07  s3://test
2020-05-26 13:58  s3://test-2

bash-4.4# s3 ls s3://test
                          DIR  s3://test/test-agent/
2020-05-27 11:56     65573216  s3://test/test-agent.tgz
```

> More command: https://s3tools.org/usage