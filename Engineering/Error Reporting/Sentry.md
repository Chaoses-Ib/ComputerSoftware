# [Sentry](https://sentry.io/)
[GitHub](https://github.com/getsentry/sentry), [Documentation](https://docs.sentry.io/)

[Expected Features](https://develop.sentry.dev/sdk/features/)

Sentry 在应用 shutdown 时会进行 flush，默认 timeout 为 2s，可能会导致网络环境较差的用户的 error 丢失。

## Availability
Sentry 的 API 至少在中国部分地区的 ISP 下被墙，或完全无法访问，或时好时坏，或访问缓慢，会超过默认的 2s 上传超时：
- HTTP

  `sentry.io`:

  ![](images/Sentry/itdog-http.png)

  `*.ingest.sentry.io`:

  ![](images/Sentry/beijing.png)

  ![](images/Sentry/guangzhou.png)

- ping

  ![](images/Sentry/itdog.png)

  ![](images/Sentry/ping.pe.png)

[如何解决国内无法使用 Sentry 的问题？ - V2EX](https://www.v2ex.com/t/941564)

## [Pricing](https://sentry.io/pricing/)
Quota | Developer | Team
--- | --- | ---
Monthly errors for Error Monitoring | 5K | 50K
Monthly performance units for Performance Monitoring & Profiling | 10K | 100K
Monthly replays for Session Replay | 50 | 500
Monthly replays for Session Replay | 1GB | 1GB

## Release health
- [.NET](https://docs.sentry.io/platforms/dotnet/configuration/releases/#sessions)

  Disabled by default in the current version.

## Platforms
### [CLI](https://github.com/getsentry/sentry-cli)
- [CLI reports that an event is sent even if it isn't - Issue #350 - getsentry/sentry-cli](https://github.com/getsentry/sentry-cli/issues/350)

  `send-event` will always print the event ID even the event is not sent successfully.

### [Rust](https://docs.sentry.io/platforms/rust/)
[GitHub](https://github.com/getsentry/sentry-rust/tree/master/sentry)

> The Rust SDK does not offer means to detect whether an Event has sent successfully or not.

- `[sentry] Failed to send envelope: error sending request for url (https://*.ingest.sentry.io/api/*/envelope/): error trying to connect: unexpected EOF during handshake`

Integrations:
- [log](https://docs.rs/sentry-log/0.31.3/sentry_log/)
- [tracing](https://docs.rs/sentry-tracing/latest/sentry_tracing/index.html)
  - `Rust Tracing Location`
  - `Rust Tracing Fields`

    Events with fields of different values but the same message will be grouped together.
- [tower](https://crates.io/crates/sentry-tower)

[Identify Users](https://docs.sentry.io/platforms/rust/enriching-events/identify-user/):
- User identification is disabled by default (except on JavaScript).
- Sentry will capture `server_name` by default, but it is not used to identify the users.

## [Debug Information Files](https://docs.sentry.io/platforms/native/data-management/debug-files/)
```sh
sentry-cli debug-files upload -o <org> -p <project> --wait /path/to/files...
```

Sentry 只会自动解析上传 debug information files 之后报告的 event，解决方法有两个：
- 开启 [Early Adopter](https://docs.sentry.io/product/accounts/early-adopter-features/) 加入内测后可以启用 [Reprocessing](https://docs.sentry.io/product/issues/reprocessing/) 功能，可以在上传 debug information files 后手动对未解析的 event 进行应用。
- 开启 [Legacy Reprocessing](https://docs.sentry.io/product/issues/reprocessing/#legacy-reprocessing) 可以在不能解析 event 时暂停处理并进行警告。

