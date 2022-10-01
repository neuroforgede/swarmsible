# 02_monitoring

## How-To:

0. If you are on Hetzner: Install the hetzner cloud volume plugin that is also included in this repo). If not, replace the volumes according to your requirements.
1. Change all relevant secrets in the secrets folder
2. run `bash deploy.sh`
3. You can reach your grafana instance at `https://grafana-${BASE_DOMAIN}`

This assumes you are running all encryption and management of SSL certificates outside of the docker swarm as is common with Cloud providers like Hetzner.

Based on original swarmprom, but adapted to new image versions.

Grafana:
![grafik](https://user-images.githubusercontent.com/719760/173693628-28da52b0-0f04-4483-b52b-3c2e4aa7ab2b.png)

Prometheus:
![grafik](https://user-images.githubusercontent.com/719760/173693770-b198a832-d76d-4808-8eb5-1768097fdf35.png)

Alertmanager:
![grafik](https://user-images.githubusercontent.com/719760/173693833-e9312ebd-0a0a-43ee-a8be-3552b6f3746c.png)
