# Server Side TLS

Shell scripts to retrieve the [latest recommended ciphersuites from Mozilla](https://wiki.mozilla.org/Security/Server_Side_TLS).

Run the script with one of the arguments **Modern**, **Intermediate**, **Old** and get a configuration file that you can include in your webserver.

Be aware that if Mozilla changes the format of their Wiki page, these scripts may start to produce garbage.
Do not use them in automatic deployment if you're not willing to debug issues that might arise from doing so.
Scripts are provided as-is.

## Usage

For generating an Apache config file:

```bash
./apachetls.sh Modern > tls_suites.conf
```

For generating an nginx config file:

```bash
./nginxtls.sh Modern > tls_suites.conf
```
