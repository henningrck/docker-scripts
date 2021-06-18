# docker-scripts

## Backup

Backup a single volume:

```sh
./backup.sh [volume] [backup directory]
```

Backup all volumes:

```sh
./backup-all.sh [backup directory]
```

## Restore

Restore a single volume:

```sh
./restore.sh [backup file] [volume]
```

## Mount and `cd` through a volume

Spawn a Ubuntu container and mount the volume into it:

```sh
./mount.sh [volume]
cd /data
```
