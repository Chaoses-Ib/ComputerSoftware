# [Sentry](https://sentry.io/)
[GitHub](https://github.com/getsentry/sentry), [Documentation](https://docs.sentry.io/)

[Expected Features](https://develop.sentry.dev/sdk/features/)

Sentry 在应用 shutdown 时会进行 flush，默认 timeout 为 2s，可能会导致网络环境较差的用户的 error 丢失。

## [Pricing](https://sentry.io/pricing/)
Quota | Developer | Team
--- | --- | ---
Monthly errors for Error Monitoring | 5K | 50K
Monthly performance units for Performance Monitoring & Profiling | 10K | 100K
Monthly replays for Session Replay | 50 | 500
Monthly replays for Session Replay | 1GB | 1GB

## Platforms
### [Rust](https://docs.sentry.io/platforms/rust/)
[GitHub](https://github.com/getsentry/sentry-rust/tree/master/sentry)

Integrations:
- [log](https://docs.rs/sentry-log/0.31.3/sentry_log/)
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

