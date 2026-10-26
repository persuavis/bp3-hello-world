# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

bp3-hello-world is an example plain-Ruby plugin gem for BP3 (persuavis/black_phoebe_3), a multi-site
multi-tenant Rails application. It shows a gem shipping its own translations; bp3-hello-engine depends on
it. The application lists it in its Gemfile explicitly so its locale files are loaded.

## Commands

The gems run on Ruby 3.4.6 (`.ruby-version`). Prefix commands with `~/.rvm/bin/rvm 3.4.6 do` when the
shell is not already on it; a missing `rspec` means the wrong Ruby, not a missing bundle.

- `bundle exec rake` - specs and RuboCop (the default task)
- `bundle exec rspec spec/path/to/file_spec.rb[:LINE]` - one file or example
- `bundle exec rubocop` / `bundle exec rubocop -a`
- `bin/setup`, `bin/console`, `rake install`

## Architecture

- `lib/bp3/hello/world.rb` appends `config/locales/*.{rb,yml}` to `I18n.load_path` when it is required;
  there is no Railtie
- `Bp3::Hello::World::Context.say_it!` (and the instance method of the same name) returns
  `I18n.t('hello.world')` in the current `I18n.locale`
- `config/locales/{en,nl,sp}.yml` hold `hello.world`

## Code Style

- RuboCop (`.rubocop.yml`): target Ruby 3.2.2, NewCops, rubocop-rake and rubocop-rspec
- Every file starts with `# frozen_string_literal: true`
- American English; no trailing whitespace on any added or modified line

## Release

Bump `lib/bp3/hello/world/version.rb` and add a `CHANGELOG.md` entry. `rake release` tags, pushes and
publishes to rubygems.org; leave releasing and committing to the user.
