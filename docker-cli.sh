# Docker Images
docker images

# Remove Images, dengan syarat harus tidak ada yang menggunakan image tersebut
docker rmi ebf01b748a56

# Create Container
docker container create --name containerName imageName
docker container create imageName # random containerName

# Create and Run Container
docker run --name containerName imageName
docker run imageName # random containerName

# Running Container in Background Proccess
docker run -d # berjalan di background untuk logs nya

# Create Container with Environment
docker container create --name containerName -e ENV1= -e ENV2= -e ENV3

# Stop Container
docker stop containerID

# Delete Container
docker rm containerID

# Log Container
docker logs containerID

# Bind Mount
"type=mount,source=/home/jution, destination=/"

# Volume
"type=volume,source=volumeName, destination=/"

# Inspect
docker image inspect imageID
docker container inspect containerID
docker volume inspect volumeID
docker network inspect networkID

# Dockerfile
FROM # Import / Pull Image yang dibutuhkan
RUN # Untuk menjalankan perintah sekaligus ketika image di buat
CMD # Untuk menjalankan perintah ketika container running atau saat di jalankan (docker run)
ADD # Menyalin file yang ada di HOST (Komputer Kita) ke Docker Image
COPY # Menyalin file yang ada di HOST (Komputer Kita) ke Docker Image

## Perbedaan apa ADD x COPY ?
## ADD -> mempunyai dua keunggulan: 1. Dia bisa melakukan salin lewat URL (wget, apt-get, get other url), 2. Ekstract
## COPY -> Hanya sebagai salin file (lebih spesifik file mana yang ingin di copy di Docker Image)

## Kapan menggunakan ADD atau COPY ?
## Tergantung kita mau seperti cara menyalin file nya ke dalam Docker Image
## Tetapi lebih direkomendasikan menggunakan COPY. Kenapa ? Karena COPY itu lebih spesifik ke file yang akan di pindahkan


# Menghapus Image, Container, Network dan Volume yang tidak terpakai
docker image prune
docker container prune
docker network prune
docker volume prune

## Dockerignore
.dockerignore