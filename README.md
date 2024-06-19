# Yireo DummyCsp

**For shops that don't need CSP to be enabled, this module offers a quick solution. Just install and enable the module and you're done.**

Technically, it replaces the default implementation of `Magento\Csp\Api\CspRendererInterface` with a dummy.

### Usage
```bash
composer require yireo/magento2-disable-csp
bin/magento module:enable Yireo_DisableCsp
```
