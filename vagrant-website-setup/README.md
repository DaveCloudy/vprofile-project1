# Vagrant Website Setup

This project sets up a virtual machine using Vagrant to host a website sourced from tooplate.com. The VM is configured with a private network and a public network, making it accessible for development and testing purposes.

## Project Structure

```
vagrant-website-setup
├── Vagrantfile
├── provision.sh
├── vm-settings
│   └── settings.md
└── README.md
```

## Requirements

- [Vagrant](https://www.vagrantup.com/downloads) installed on your machine.
- [VirtualBox](https://www.virtualbox.org/) or another supported provider.

## Getting Started

1. Clone this repository to your local machine:
   ```
   git clone <repository-url>
   cd vagrant-website-setup
   ```

2. Start the Vagrant environment:
   ```
   vagrant up
   ```

3. Access the website by navigating to `http://192.168.57.10` in your web browser.

## Provisioning Script

The `provision.sh` script is executed during the Vagrant setup process. It installs necessary packages, configures the web server, and deploys the website files from tooplate.com.

## VM Settings

For detailed information about the VM settings, including network configuration, refer to `vm-settings/settings.md`.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.