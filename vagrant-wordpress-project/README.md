# Vagrant WordPress Project

This project sets up a Vagrant environment for running a WordPress site using an Ubuntu 20.04 (Focal Fossa) box.

## Project Structure

```
vagrant-wordpress-project
├── Vagrantfile
├── provision.sh
└── README.md
```

## Requirements

- Vagrant
- VirtualBox

## Getting Started

1. **Clone the repository** (if applicable):
   ```bash
   git clone <repository-url>
   cd vagrant-wordpress-project
   ```

2. **Start the Vagrant environment**:
   ```bash
   vagrant up
   ```

3. **Access the virtual machine**:
   ```bash
   vagrant ssh
   ```

4. **Visit your WordPress site**:
   Open your web browser and go to `http://192.168.59.11`.

## Provisioning

The provisioning script `provision.sh` will automatically run when you bring up the Vagrant environment. It installs necessary packages, sets up a web server, and installs WordPress.

## Stopping the Environment

To stop the Vagrant environment, run:
```bash
vagrant halt
```

## Destroying the Environment

To remove all resources created by Vagrant, run:
```bash
vagrant destroy
```

## License

This project is licensed under the MIT License.