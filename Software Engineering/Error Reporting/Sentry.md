# [Sentry](https://sentry.io/)
[GitHub](https://github.com/getsentry/sentry), [Documentation](https://docs.sentry.io/)

[Expected Features | Sentry Developer Documentation](https://develop.sentry.dev/sdk/features/)

Sentry 在应用 shutdown 时会进行 flush，默认 timeout 为 2s，可能会导致网络环境较差的用户的 error 丢失。

## Platforms
### [Rust](https://docs.sentry.io/platforms/rust/)
[GitHub](https://github.com/getsentry/sentry-rust/tree/master/sentry)

Integrations:
- [log](https://docs.rs/sentry-log/0.31.3/sentry_log/)
- [tower](https://crates.io/crates/sentry-tower)