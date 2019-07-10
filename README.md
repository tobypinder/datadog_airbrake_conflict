> NOTE: This repo is **NOT** yet exhibiting the `SystemStackError: stack level too deep` issue. Efforts to reproduce the issue from our commercial codebase are ongoing.

# Demonstrates Airbrake / Datadog conflict.

* Generated with `rails new --skip-yarn --skip-action-mailer --skip-active-record --skip-active-storage --skip-puma --skip-action-cable --skip-sprockets --skip-spring --skip-listen --skip-coffee --skip-javascript --skip-turbolinks --skip-test --skip-system-test --skip-bootsnap --api datadog_airbrake_conflict`

* dotenv gem added to gemfile to load ENV variables
* ddtrace and airbrake added and configured.

## Reproduction

* run `rake ddab:conflict`
