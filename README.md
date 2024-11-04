
# Expose Share Script

This repository contains a shell script that uses [Expose](https://beyondco.de/docs/expose/introduction) to share a local application URL from an `.env` file. The script simplifies the process of sharing your local development environment by reading the `APP_URL` directly from the `.env` file and executing the Expose share command with predefined domain and server options.

## Features

- Reads the application URL (`APP_URL`) from the `.env` file.
- Configures the Expose share command with a custom domain and server.
- Easy to use and configure.

## Prerequisites

- [Expose](https://beyondco.de/docs/expose/introduction) installed on your system.
- A valid `.env` file with the `APP_URL` set.
- A valid subscription to utalise custom domain names.

## Setup

1. Clone this repository:
   ```bash
   git clone git@github.com:Varsuite-Media-Group-Ltd/expose-share-script.git
   cd expose-share-script
   ```

2. Ensure your `.env` file is present in the repository root and contains the `APP_URL`:
   ```env
   APP_URL=https://your-local-app.test
   ```

3. Make the script executable:
   ```bash
   chmod +x expose.sh
   ```

## Usage

Run the script to share your local application using Expose:

```bash
./expose.sh
```

This command will read the `APP_URL` from the `.env` file and start sharing it using Expose with the specified domain and server options.

## Configuration

You can modify the `DOMAIN` and `SERVER` variables in the script to match your preferences:

```bash
DOMAIN="your-custom-domain.dev"
SERVER="your-preferred-server"
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue for any bugs or feature requests.

## Acknowledgements

- [Beyond Code Expose](https://beyondco.de/docs/expose/introduction) - The tool used to share local development environments.

---

Enjoy sharing your local applications with ease! 🎉
