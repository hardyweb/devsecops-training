📦 Apa Itu Ansible?
Ansible ialah alat automasi sumber terbuka yang digunakan untuk:

Provisioning (sediakan server)

Configuration management (urus konfigurasi)

Application deployment (deploy aplikasi)

Task automation (automasi kerja berulang)

Ia agentless – maksudnya, tak perlu pasang software kat client. Cuma perlukan SSH & Python (biasanya dah ada dalam Linux).



🛠️ Cara Pasang Ansible di Debian:

```bash
sudo apt update
sudo apt install ansible -y
```


📁 Struktur Projek Asas Ansible
Contoh folder projek:

```
ansible-project/
├── inventory
├── playbook.yml

```

📄 Contoh Fail inventory
Senarai host yang kita nak kawal:

```ini
[web]
192.168.100.10

[db]
192.168.100.11

```

📄 Contoh playbook.yml
```yaml
- name: Contoh asas playbook
  hosts: web
  become: yes
  tasks:
    - name: Install Nginx
      apt:
        name: nginx
        state: present
        update_cache: yes
```

🔁 Jalankan Playbook

```bash

ansible-playbook -i inventory playbook.yml
```
