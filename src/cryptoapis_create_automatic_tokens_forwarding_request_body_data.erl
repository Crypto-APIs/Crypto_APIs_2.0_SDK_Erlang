-module(cryptoapis_create_automatic_tokens_forwarding_request_body_data).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_tokens_forwarding_request_body_data/0]).

-type cryptoapis_create_automatic_tokens_forwarding_request_body_data() ::
    #{ 'item' := cryptoapis_create_automatic_tokens_forwarding_request_body_data_item:cryptoapis_create_automatic_tokens_forwarding_request_body_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
