<?php
declare(strict_types=1);

namespace Yireo\DisableCsp\Csp;

use Magento\Csp\Api\CspRendererInterface;
use Magento\Framework\App\Response\HttpInterface as HttpResponse;

class DummyCspRenderer implements CspRendererInterface
{
    public function render(HttpResponse $response): void
    {
        // nothing
    }
}
