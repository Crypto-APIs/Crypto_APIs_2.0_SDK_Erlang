-module(cryptoapis_tokens_forwarding_success_data).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_success_data/0]).

-type cryptoapis_tokens_forwarding_success_data() ::
    #{ 'product' := binary(),
       'event' := binary(),
       'item' := cryptoapis_tokens_forwarding_success_data_item:cryptoapis_tokens_forwarding_success_data_item()
     }.

encode(#{ 'product' := Product,
          'event' := Event,
          'item' := Item
        }) ->
    #{ 'product' => Product,
       'event' => Event,
       'item' => Item
     }.
