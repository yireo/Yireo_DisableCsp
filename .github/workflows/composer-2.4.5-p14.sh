#!/bin/bash
cp composer.json composer-old.json
curl -fsSL https://raw.githubusercontent.com/LokiCheckout/magento-2.4.5-patches/3848e73173a7400a5687f323804da8bc611a7231/modules/patches.json -o loki-checkout-patches.json
echo "73beff632f7664208b3de7b4b14929773f669394a709adfd0356c88bf86e4ded  loki-checkout-patches.json" | sha256sum -c -
jq --slurpfile p loki-checkout-patches.json '.extra.patches = ((.extra.patches // {}) * $p[0].extra.patches)' composer-old.json > composer.json
