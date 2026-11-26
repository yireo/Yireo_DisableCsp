# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.5] - 26 November 2026
### Fixed
- Stale `sri-hashes.json` files no longer break or only partially protect the checkout, multishipping checkout and admin order creation pages: Subresource Integrity is now disabled consistently (all SRI plugins of Magento_Csp, the `sri.js` script and the SRI hashes blocks)

### Changed
- README now documents the security implications of disabling CSP and SRI (including PCI DSS 4.0 requirements 6.4.3 and 11.6.1) and the report-only mode as alternative

## [1.0.4] - 06 November 2026
### Fixed
- Remove PHP 8.1 support, add PHP 8.5 support
