# VM Settings Documentation

## Virtual Machine Configuration

- **Box Name**: `ubuntu/focal64`
- **Private Network**: `192.168.57.10`
- **Public Network**: Configured for external access.

## Network Configuration

- The private network allows for internal communication within the Vagrant environment.
- The public network enables access to the VM from external devices.

## Provisioning Script

- The provisioning script located at `provision.sh` is responsible for:
  - Installing necessary packages.
  - Configuring the web server.
  - Deploying the website from tooplate.com.

## Additional Settings

- Ensure that the VM has sufficient resources allocated for optimal performance.
- Review the provisioning script for any additional configurations specific to your needs.