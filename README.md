# Yireo DummyCsp

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

