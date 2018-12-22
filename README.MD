# Telegram_SSH_login_alert

## About

Mengirim pesan ke akun telegram ketika ada akses login ke servers menggunakan SSH

## Screenshots

![screenshot](https://i.imgur.com/Ww9l2tk.jpg)

## Installation

### Yang di perlukan

- Login linux server menggunakan user root
- Telah di instal curl dan nano pada server anda (jika anda menggunakan centos dan belum di instal, jalankan ```yum install curl``` dan ```yum install nano```)
- Akun Telegram Bot (lihat [https://core.telegram.org/bots#creating-a-new-bot](https://core.telegram.org/bots#creating-a-new-bot) untuk panduan membuat bot telegram)
- Telegram User id (kamu bisa mengeceknya melalui [https://telegram.me/myidbot](https://telegram.me/myidbot))

```shell
cd /etc/profile.d/

wget https://raw.githubusercontent.com/indonesia08/Telegram_SSH_login_alert/master/telegram_ssh_login_alert.sh
```

- Edit ```telegram_ssh_login_alert.sh``` dengan mencalankan shell berikut pada terminal kamu

```shell
nano /etc/profile.d/telegram_ssh_login_alert.sh

USERID="" #isi dengan user id telegram kamu
KEY="" #isi dengan token bot telegram.

```

Selamat mencoba, saya mencobanya pada VPS centos 7 dan berjalan lancar

# https://github.com/indonesia08
