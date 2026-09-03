# Yireo DisableCsp

<!-- badges.specs.start -->
![Magento version](https://img.shields.io/badge/Magento-2.4.6%20%7C%202.4.9-orange)
![PHP version](https://img.shields.io/badge/PHP-8.2%E2%80%938.5-777BB4)
![License](https://img.shields.io/badge/License-OSL--3.0-blue)
![Latest Version](https://img.shields.io/packagist/v/yireo/magento2-disable-csp)
<!-- badges.specs.end -->


**For shops that don't need CSP to be enabled, this module offers a quick solution. Just install and enable the module and you're done.**

Technically, it replaces the default implementation of `Magento\Csp\Api\CspRendererInterface` with a dummy.

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
![Static Tests](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/static-tests.yml?label=static-tests)
![Unit Tests](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/unit-tests.yml?label=unit-tests)
![Integration Tests](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/integration-tests.yml?label=integration-tests)
![Playwright](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/playwright.yml?label=playwright)
![DI Compilation](https://img.shields.io/github/actions/workflow/status/yireo/Yireo_DisableCsp/compile.yml?label=compile)
<!-- badges.test.end -->
