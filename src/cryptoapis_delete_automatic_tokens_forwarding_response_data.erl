-module(cryptoapis_delete_automatic_tokens_forwarding_response_data).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_tokens_forwarding_response_data/0]).

-type cryptoapis_delete_automatic_tokens_forwarding_response_data() ::
    #{ 'item' := cryptoapis_delete_automatic_tokens_forwarding_response_item:cryptoapis_delete_automatic_tokens_forwarding_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
