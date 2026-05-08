# Privacy Policy

Language: English | [简体中文](./PRIVACY.zh-CN.md)

Last updated: May 8, 2026

This Privacy Policy explains how Mono Dash ("Mono Dash", "the App", "we", "us", or "our") handles information when you use the App.

Mono Dash is a third-party mobile management client for 1Panel. It is not an official 1Panel product and is not affiliated with 1Panel.

This document is provided for transparency and for use as a public privacy policy URL, including on GitHub, the App Store, and Google Play. It is not legal advice.

## Summary

Mono Dash does not operate any backend server for user accounts, analytics, behavior tracking, logs, or 1Panel data. We do not collect, record, or analyze your in-app behavior.

Your server list, app settings, and 1Panel connection information are stored locally on your device. Your operations are performed from your device to the 1Panel servers that you configure.

Some app store purchase features may use Apple, Google Play, and RevenueCat to process purchases and synchronize purchase status. These purchase services are separate from any 1Panel server data.

## No Analytics or Tracking

Mono Dash does not include a Mono Dash-operated analytics service, tracking SDK, advertising SDK, behavior logging backend, or crash-report collection backend.

We do not record what panels you add, what pages you open, what operations you perform, what commands you run, what files you view, or how often you use the App.

## Developer and Privacy Contact

The developer and maintainer contact for Mono Dash is the Mono Dash project maintainer through the GitHub repository:

https://github.com/bin64/Mono-Dash/issues

## Related Documents

- [Terms of Use](./TERMS.md)

## Information We Handle

Depending on how you use the App, Mono Dash may access or store the following information locally on your device, or transmit it directly from your device to the 1Panel server that you configure. We do not receive this information on our own servers.

### Panel connection information

When you add a 1Panel server, the App may store:

- Server name or display name
- Hostname or IP address
- Port
- HTTP or HTTPS setting
- Whether insecure/self-signed certificate connections are allowed
- Creation time, last used time, and local ordering information
- Custom request headers if you configure them

This information is stored locally on your device so the App can reconnect to your panels. It is not uploaded to a Mono Dash backend.

### API keys and authentication data

The App stores 1Panel API keys locally using the operating system's secure storage where available. The App uses the API key to sign requests to your configured 1Panel server.

Mono Dash does not send your 1Panel API keys to any Mono Dash backend.

### Server and panel data

When you connect to a 1Panel instance, the App may display or transmit data between your device and that 1Panel server, including:

- Server status, metrics, process information, logs, and SSH information
- File names, directory paths, file contents, and uploaded or downloaded files
- Website, runtime, database, backup, firewall, cron job, application, container, and system settings
- Terminal input and terminal output when you use terminal features
- Operation results and error messages returned by your panel

This data is exchanged directly between your device and the 1Panel server that you configure. Mono Dash does not provide or control that server, and we do not collect this data.

### Files, photos, and documents

If you choose to upload files, import files, download files, share exported logs, or view images, the App may access selected files or photos on your device. The App uses this access only for the action you request.

Files selected for upload may be sent to the 1Panel server you choose. Files downloaded from a 1Panel server may be stored locally on your device.

### Local network access

On platforms that require permission, the App may request local network access so it can connect to 1Panel services and website resources on your local network.

### Purchase information

If in-app purchases are enabled in your build, purchases are processed by the App Store or Google Play. Mono Dash may use RevenueCat to load products, process purchase flows, restore purchases, and synchronize purchase entitlement status.

Purchase-related information may include purchase status, product identifiers, entitlement identifiers, receipts, transaction information, device or app identifiers used by the purchase provider, and related diagnostic information. Payment card details are handled by Apple or Google and are not received by Mono Dash. Purchase services do not receive your 1Panel server data from Mono Dash.

For more information, review the privacy policies of the relevant providers:

- Apple Privacy Policy: https://www.apple.com/legal/privacy/
- Google Privacy Policy: https://policies.google.com/privacy
- RevenueCat Privacy Policy: https://www.revenuecat.com/privacy

### Device and app information

The App may send a user agent string to your configured 1Panel server. This may include the App name, App version, platform, and operating system version. This helps the server identify requests from the App.

### Logs and diagnostics

The App may create local debug or diagnostic logs while running. These logs stay on your device unless you choose to share them. The App includes safeguards to reduce accidental logging of sensitive tokens and passwords, but you should avoid sharing logs publicly if they may include server addresses, paths, operational data, or other sensitive information.

## How the App Processes Information

Mono Dash processes information locally on your device to:

- Connect to and manage the 1Panel servers you configure
- Store your local app settings and server list
- Authenticate requests to your configured 1Panel servers
- Upload, download, view, edit, or share files when you request those actions
- Display server status, logs, terminal sessions, websites, databases, containers, and other 1Panel resources
- Process, verify, restore, and synchronize purchases

We do not operate a Mono Dash backend that receives your server list, API keys, panel data, operation history, terminal input, logs, files, analytics events, or usage behavior.

## How Information Is Shared

Mono Dash does not sell your personal information and does not share your 1Panel data with a Mono Dash backend.

Information may leave your device only in the following situations:

- To your configured 1Panel servers, when required for the operation you perform
- To Apple, Google Play, and RevenueCat for purchase processing and purchase status synchronization, if purchases are enabled
- To the apps or services you choose through system sharing features

Because we do not operate a backend for App usage data, we generally do not have user operation records, 1Panel data, API keys, files, or analytics data to disclose.

## Local Storage and Security

Mono Dash stores panel connection data and app preferences locally on your device. API keys are stored using secure system storage where available. We do not copy this local data to a Mono Dash backend.

You are responsible for protecting access to your device, your 1Panel servers, and your API keys. You should use HTTPS whenever possible and only enable insecure/self-signed certificate connections for servers you trust.

No method of storage or transmission is completely secure. Because Mono Dash connects directly to servers you configure, the security of your data also depends on your server configuration, network environment, certificate setup, and 1Panel access controls.

## Data Retention

Mono Dash keeps locally stored information on your device until you delete it, remove a server from the App, clear local data, uninstall the App, or your operating system removes the data.

Downloaded files remain on your device until you delete them. Files and logs stored on your 1Panel server are controlled by that server and by your own server retention settings.

Purchase records may be retained by Apple, Google Play, RevenueCat, and applicable payment providers according to their own policies and legal obligations.

## Deleting Your Data

You can delete locally stored panel connection information by removing the server from the App. This also removes the locally stored API key associated with that server.

You can delete downloaded files from your device using the App's download management features or your operating system's file management tools.

To delete data stored on a 1Panel server, use 1Panel, Mono Dash features that operate on that server, or your server administration tools. Mono Dash does not control server-side retention for 1Panel instances that you operate or connect to.

For purchase-related deletion or privacy requests, contact Apple, Google, or RevenueCat as applicable.

## Third-Party Services

Mono Dash may interact with third-party services or components, including:

- 1Panel servers configured by you
- Apple App Store and Google Play for purchases and distribution
- RevenueCat for purchase entitlement management
- Operating system services such as secure storage, file pickers, sharing, web views, and local network permission prompts

These services may process data under their own privacy policies.

## Children's Privacy

Mono Dash is intended for server administration and is not directed to children. We do not knowingly collect personal information from children.

## International Use

You may use Mono Dash to connect to servers in different countries or regions. Information transmitted to your configured 1Panel server will be processed wherever that server is hosted.

## Changes to This Policy

We may update this Privacy Policy from time to time. Changes will be posted in this repository or another public location used by Mono Dash. The "Last updated" date will be updated when material changes are made.

## Contact

For privacy questions, open an issue in the Mono Dash GitHub repository:

https://github.com/bin64/Mono-Dash/issues
