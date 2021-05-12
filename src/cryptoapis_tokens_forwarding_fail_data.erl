-module(cryptoapis_tokens_forwarding_fail_data).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_fail_data/0]).

-type cryptoapis_tokens_forwarding_fail_data() ::
    #{ 'product' := binary(),
       'event' := binary(),
       'item' := cryptoapis_tokens_forwarding_fail_data_item:cryptoapis_tokens_forwarding_fail_data_item()
     }.

encode(#{ 'product' := Product,
          'event' := Event,
          'item' := Item
        }) ->
    #{ 'product' => Product,
       'event' => Event,
       'item' => Item
     }.
