# Yireo DisableCsp

<!-- badges.specs.start -->
<div class="github-specs-badges">

![Magento version](https://img.shields.io/badge/Magento-2.4.6%20%7C%202.4.9-orange)
![PHP version](https://img.shields.io/badge/PHP-8.2%E2%80%938.5-777BB4)
![License](https://img.shields.io/badge/License-OSL--3.0-blue)
![Latest Version](https://img.shields.io/packagist/v/yireo/magento2-disable-csp)

</div>
<!-- badges.specs.end -->


**For shops that don't need CSP to be enabled, this module offers a quick solution. Just install and enable the module and you're done.**

Technically, it replaces the default implementation of `Magento\Csp\Api\CspRendererInterface` with a dummy. Next, it disables the Subresource Integrity (SRI) features of the `Magento_Csp` module: The DI plugins that generate, store and apply integrity hashes, plus the `sri.js` script and the `window.sriHashes` block on the checkout, the multishipping checkout and the admin order creation page.

### Security considerations
Before using this module, be aware of what you are giving up:

- No `Content-Security-Policy` (or `Content-Security-Policy-Report-Only`) header is sent anymore, in **all** areas, including the Magento Admin Panel. Violations are no longer reported either.
- No `integrity` attributes are added to scripts on payment pages anymore.
- PCI DSS 4.0 requirements 6.4.3 and 11.6.1 require you to manage and monitor scripts on payment pages. With this module enabled, you need an alternative way to meet these requirements.

If you only want to get rid of blocked resources without losing insight, consider using the report-only mode of Magento instead:

```bash
bin/magento config:set csp/mode/storefront/report_only 1
bin/magento config:set csp/mode/admin/report_only 1
```

Any previously generated `pub/static/*/sri-hashes.json` files are no longer used by Magento with this module enabled and can be safely removed.

### Usage
```bash
composer require yireo/magento2-disable-csp
bin/magento module:enable Yireo_DisableCsp
```
### Remark

The `magento/module-csp` package is still necessary and should not be removed via composer replace.

### Alternatives
- [Wouyang_DisableCsp](https://github.com/weiweiouyang/magento2-module-disable-csp/)
  - Disables the `csp_render` observer
- [baldwin-agency/magento2-module-csp-shim](https://github.com/baldwin-agency/magento2-module-csp-shim/)
  - Overrides the Magento CSP module itself and its namespaces (ugly)


## Current status

<!-- badges.test.start -->
<div class="github-pipeline-badges">

![Static Tests](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/static-tests.yml?label=static-tests)
![Unit Tests](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/unit-tests.yml?label=unit-tests)
![Integration Tests](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/integration-tests.yml?label=integration-tests)
![Playwright](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/playwright.yml?label=playwright)
![DI Compilation](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/compile.yml?label=compile)

</div>
<!-- badges.test.end -->
