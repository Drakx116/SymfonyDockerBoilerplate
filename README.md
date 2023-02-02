# Symfony Docker Boilerplate 📦

## Introduction 🔉

Setup a minimal working Symfony app easily 🚀

## Requirements 💻

- Docker
- Docker Compose
- Make (Recommended)

## Content 📜

Docker Containers 🐋
- **Web** : PHP 8.2 with Apache and Composer - Alias **php**
- **Database**: MySQL 5.7 - Alias **db**

## Installation ⚙️

Clone the repository locally :
```bash
# Over SSH
git clone git@github.com:Drakx116/SymfonyDockerBoilerplate.git

# Over HTTPS
git clone https://github.com/Drakx116/SymfonyDockerBoilerplate.git
```

Use the provided Makefile to run the containers over docker compose :

```bash
make up
```

Once the Web and Database containers running,  create the Symfony application :

```bash
make new
```

That's all ! Your new Symfony application is now living under the `/server` directory 🎉
